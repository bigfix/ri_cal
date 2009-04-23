module RiCal
  module Properties
    # Properties::Timezone provides property accessing methods for the Timezone class
    # This source file is generated by the  rical:gen_propmodules rake tasks, DO NOT EDIT
    module Timezone

      # return the the TZID property
      # which will be an instances of RiCal::PropertyValueText
      # 
      # [purpose (from RFC 2445)]
      # This property specifies the text value that uniquely indentifies the "VTIMEZONE" calendar component.
      # 
      # see RFC 2445 4.8.3.1 pp 97-98
      def tzid_property
        @tzid_property
      end

      # set the TZID property
      # property value should be an instance of RiCal::PropertyValueText
      def tzid_property=(property_value)
        @tzid_property = property_value
      end

      # set the value of the TZID property
      def tzid=(ruby_value)
        self.tzid_property= RiCal::PropertyValue::Text.convert(ruby_value)
      end

      # return the value of the TZID property
      # which will be an instance of String
      def tzid
        tzid_property ? tzid_property.ruby_value : nil
      end

      def tzid_property_from_string(line) # :nodoc:
        @tzid_property = RiCal::PropertyValue::Text.new(line)
      end


      # return the the LAST-MODIFIED property
      # which will be an instances of RiCal::PropertyValueDateTime
      # 
      # [purpose (from RFC 2445)]
      # This property specifies the date and time that the information associated with the calendar component was last revised in teh calendar store.
      # 
      # see RFC 2445 4.8.7.3 p 131
      def last_modified_property
        @last_modified_property
      end

      # set the LAST-MODIFIED property
      # property value should be an instance of RiCal::PropertyValueDateTime
      def last_modified_property=(property_value)
        @last_modified_property = property_value
      end

      # set the value of the LAST-MODIFIED property
      def last_modified=(ruby_value)
        self.last_modified_property= RiCal::PropertyValue::DateTime.convert(ruby_value)
      end

      # return the value of the LAST-MODIFIED property
      # which will be an instance of DateTime
      def last_modified
        last_modified_property ? last_modified_property.ruby_value : nil
      end

      def last_modified_property_from_string(line) # :nodoc:
        @last_modified_property = RiCal::PropertyValue::DateTime.new(line)
      end


      # return the the TZURL property
      # which will be an instances of RiCal::PropertyValueUri
      # 
      # [purpose (from RFC 2445)]
      # The TZURL provies a means for a VTIMEZONE component to point to a network location that can be used to retrieve an up-to_date version of itself.
      # 
      # see RFC 2445 4.8.3.4 p 101
      def tzurl_property
        @tzurl_property
      end

      # set the TZURL property
      # property value should be an instance of RiCal::PropertyValueUri
      def tzurl_property=(property_value)
        @tzurl_property = property_value
      end

      # set the value of the TZURL property
      def tzurl=(ruby_value)
        self.tzurl_property= RiCal::PropertyValue::Uri.convert(ruby_value)
      end

      # return the value of the TZURL property
      # which will be an instance of Uri
      def tzurl
        tzurl_property ? tzurl_property.ruby_value : nil
      end

      def tzurl_property_from_string(line) # :nodoc:
        @tzurl_property = RiCal::PropertyValue::Uri.new(line)
      end


      def export_properties_to(export_stream)
        export_prop_to(export_stream, "LAST-MODIFIED", @last_modified_property)
        export_prop_to(export_stream, "TZURL", @tzurl_property)
        export_prop_to(export_stream, "TZID", @tzid_property)
      end

      def ==(o)
        if o.class == self.class
        (last_modified_property == o.last_modified_property) &&
        (tzurl_property == o.tzurl_property) &&
        (tzid_property == o.tzid_property)
        else
           super
        end
      end

      def initialize_copy(o)
        super
        last_modified_property = last_modified_property && last_modified_property.dup
        tzurl_property = tzurl_property && tzurl_property.dup
        tzid_property = tzid_property && tzid_property.dup
      end

      def add_date_times_to(required_timezones)
        add_property_date_times_to(required_timezones, last_modified_property)
      end

      module ClassMethods
        def property_parser
          {"TZID"=>:tzid_property_from_string, "TZURL"=>:tzurl_property_from_string, "LAST-MODIFIED"=>:last_modified_property_from_string}
        end
      end

      def self.included(mod)
        mod.extend ClassMethods
      end

      def mutual_exclusion_violation
        false
      end
    end
  end
end
