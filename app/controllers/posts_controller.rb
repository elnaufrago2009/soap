class PostsController < ApplicationController
  def index
  	client = Savon.client do 
  		wsdl "https://e-beta.sunat.gob.pe/ol-ti-itcpfegem-beta/billService?wsdl"
  		wsse_auth("20532710066MODDATOS", "MODDATOS", :digest)
  		env_namespace ("soapenv")
  	end
  	@response = client.operations
  end
end
