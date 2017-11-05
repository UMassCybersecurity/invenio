class ScannerController < ApplicationController
  def index
    @options = ['a']
  end

  def report
    @ip = params[:ip_address]
  end
end
