if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJHS3DDVVPP2TBMDQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['sewingly']
  end
end

