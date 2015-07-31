class RecordOfPerformancesController < ApplicationController
  # uncomment to do LTI validation on all services in this controller
  # before_filter :pre_process_tenant

  # CURL statements to test controller from command line--substitute appropriate base_url
  #
  # show all the resources in model (returns JSON array of hashes)
  # curl http://localhost:5000/record_of_performances
  #
  # show a particular resource (returns JSON hash)
  # curl http://localhost:5000/record_of_performances/2
  #
  # delete all rop rows (note: must be with DELETE method)
  # curl -X DELETE http://localhost:5000/record_of_performances/2
  #
  # delete on rop (note: must be with DELETE method)
  # curl -X DELETE http://localhost:5000/delete_all_record_of_performances
  #
  # show full detail of rop (note SINGULAR record_of_performance)
  # curl http://localhost:5000/record_of_performance/2
  #



  def create
    pre_process_tenant

    json_str = request.body.read

    begin
      rop_wrapper = JsonWrapper.new(json_str)
    rescue
      return [ nil, 400, 'JSON validation failure' ]
    end

    logger.info("RecordOfPerformance as received: ")

    pretty_rop = JSON.pretty_generate(rop_wrapper.root)
    logger.info(pretty_rop)

    first_name = rop_wrapper.root['user']['schema:givenName']
    last_name = rop_wrapper.root['user']['schema:familyName']

    program_name = rop_wrapper.root['program']['schema:alternateName']

    RecordOfPerformance.create(rop_id: rop_wrapper.root['@id'],
                               extracted_at: rop_wrapper.first_at('created_at'),
                               product_name: rop_wrapper.first_at('tool_consumer_profile.product_name'),
                               service_provider_name: rop_wrapper.first_at('tool_consumer_profile.service_provider_name'),
                               first_name: first_name,
                               last_name: last_name,
                               organization_name: rop_wrapper.first_at('organization.legal_name'),
                               program_name: program_name,
                               rop_json: pretty_rop)

    render text: "<pre>#{pretty_rop}</pre>"
  end

  def destroy
    id = params[:id]
    rop = RecordOfPerformance.find(id)
    rop.delete

    render text: "Rop #{id} deleted"
  end

  def destroy_all
    RecordOfPerformance.delete_all
    render text: "All rops deleted"
  end

  def index
    rops = RecordOfPerformance.all
    result = []
    rops.each do |rop|
      rop_hash = marshall_rop(rop)
      result << rop_hash
    end

    render json: result
  end

  def show
    id = params[:id]
    rop = RecordOfPerformance.find(id)

    render json: marshall_rop(rop)
  end

  def show_full_rop
    id = params[:id]
    rop = RecordOfPerformance.find(id)

    render text: rop.rop_json
  end

  private

  def marshall_rop(rop)
    {
        "@id" => "#{record_of_performances_url}/#{rop.id}",
        "@type" => 'RecordOfPerformanceId',
        "rop_id" => rop.rop_id,
        "extracted_at" => rop.extracted_at,
        "product_name" => rop.product_name,
        "service_provider_name" => rop.service_provider_name,
        "first_name" => rop.first_name,
        "last_name" => rop.last_name,
        "organization_name" => rop.organization_name,
        "program_name" => rop.program_name
    }
  end
end
