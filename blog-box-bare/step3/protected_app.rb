require "dropbox_sdk"

require File.expand_path("blog", "models")
require File.expand_path("dropbox_cli", "lib")

DROPBOX_CALLBACK_URL = "http://localhost:9292/protected/authorize"

def callback_url
  ENV["DROPBOX_CALLBACK_URL"] || DROPBOX_CALLBACK_URL
end

def dropbox_session
  @dropbox_session ||= if session[:dropbox_session]
                         DropboxSession.deserialize(session[:dropbox_session])
                       else
                         DropboxSession.new(ENV["APP_KEY"], ENV["APP_SECRET"])
                       end
end

class Protected < Cuba; end

Protected.use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ["admin", "admin"]
end

Protected.define do  
  on get do
    on "sign_in" do
    end
    
    on "authorize", param("oauth_token") do |oauth_token|
    end
  end
  
  on post do
    on "sign_out" do
    end
    
    on "publish" do
    end
  end
end