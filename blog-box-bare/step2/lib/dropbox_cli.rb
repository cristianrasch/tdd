class DropboxCLI
  ACCESS_TYPE = :app_folder
  
  def initialize(session)
    @session = session
  end
  
  def fetch_posts(dest)
  end
  
private
  
  def client
    @client ||= DropboxClient.new(@session, ACCESS_TYPE)
  end
end