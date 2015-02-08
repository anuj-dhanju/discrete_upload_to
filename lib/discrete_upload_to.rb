require "discrete_upload_to/version"

module DiscreteUploadTo
  ActiveSupport.on_load(:action_view) do
    class ActionView::Base
      def discrete_upload_tag name, url, klas=''
	     "#{file_field_tag :name, class: klas + 'discrete_upload'}<script>$(document).on('change', '.discrete_upload', function(e){uploadFile($(this)[0].files[0]);});function uploadFile(image){data = new FormData();data.append('#{name}', image);$.ajax({data: data,type: 'post',url: '#{url}',cache: false,contentType: false,processData: false,success: function(data){discrete_upload_success(data['url'])},error: function(){discrete_upload_failure()}});}</script>".html_safe
      end
    end
  end 
end
