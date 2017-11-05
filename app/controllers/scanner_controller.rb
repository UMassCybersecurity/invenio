class ScannerController < ApplicationController
  def index
    @options = Hash.new
    @options['Discovery'] = "-sn"
    @options['Full'] = "-sV --version-intensity 8"
  end

  def report
    @ip = params[:ip_address]
  end

  def scan
    
  end
end
