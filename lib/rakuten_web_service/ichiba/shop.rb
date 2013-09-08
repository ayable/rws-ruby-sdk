module RakutenWebService
  module Ichiba
    class Shop < Resource
      attribute :shopName, :shopCode, :shopUrl

      def items(options={})
        options = options.merge(:shop_code => self.code)
        RakutenWebService::Ichiba::Item.search(options)
      end
    end
  end
end
