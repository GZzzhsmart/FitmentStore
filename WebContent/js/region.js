/* $Id : region.js 4865 2011-01-31 14:04:10Z paulgao $ */

var region = new Object();

region.isAdmin = false;

region.loadRegions = function(parent, type, target)
{
  //Ajax.call(region.getFileName(), 'type=' + type + '&target=' + target + "&parent=" + parent , region.response, "GET", "JSON");
  
  jQuery.ajax({url:region.getFileName(),data:'type=' + type + '&target=' + target + "&parent=" + parent, success:region.response, type:'GET', dataType:'json'});
}

/* *
 * 载入指定的国家下所有的省份
 *
 * @country integer     国家的编号
 * @selName string      列表框的名称
 */
region.loadProvinces = function(country, selName)
{
  var objName = (typeof selName == "undefined") ? "selProvinces" : selName;

  region.loadRegions(country, 1, objName);
}

/* *
 * 载入指定的省份下所有的城市
 *
 * @province    integer 省份的编号
 * @selName     string  列表框的名称
 */
region.loadCities = function(province, selName)
{
  var objName = (typeof selName == "undefined") ? "selCities" : selName;

  region.loadRegions(province, 2, objName);
}

/* *
 * 载入指定的城市下的区 / 县
 *
 * @city    integer     城市的编号
 * @selName string      列表框的名称
 */
region.loadDistricts = function(city, selName)
{
  var objName = (typeof selName == "undefined") ? "selDistricts" : selName;

  region.loadRegions(city, 3, objName);
}

/* *
 * 处理下拉列表改变的函数
 *
 * @obj     object  下拉列表
 * @type    integer 类型
 * @selName string  目标列表框的名称
 */
region.changed = function(obj, type, selName)
{
  var parent = obj.options[obj.selectedIndex].value;

  region.loadRegions(parent, type, selName);
}

region.response = function(result, text_result)
{
  var sel = document.getElementById(result.target);
  sel.length = 1;
  sel.selectedIndex = 0;
  sel.style.display = (result.regions.length == 0 && ! region.isAdmin && result.type -0 >1) ? "none" : "";
/*  if(result.html && $("#expr_nature").attr("id") && result.type==3 && result.regions.length){ //加入购物车
	 $("#expr_nature").html(result.html)
  }
  else{
	$("#expr_nature").empty(); 
  };*/
  

  
  if (document.all)
  {
    sel.fireEvent("onchange");
  }
  else
  {
    var evt = document.createEvent("HTMLEvents");
    evt.initEvent('change', true, true);
    sel.dispatchEvent(evt);
  }

  if (result.regions)
  {
	  var h='';
    for (i = 0; i < result.regions.length; i ++ )
    {
      var opt = document.createElement("OPTION");
      opt.value = result.regions[i].region_id;
      opt.text  = result.regions[i].region_name;

      sel.options.add(opt);
	
	h+='<input type="checkbox" name="service_area[]" value="'+result.regions[i].region_id+'">'+result.regions[i].region_name+'</option>&nbsp;&nbsp;';
    }
  }
  		  if($("#service_area").attr("id") && result.type==3){ //体验店服务区域
			 $("#service_area").html(h);
		  }
		  else{
			$("#service_area").empty(); 
		  };
}

region.getFileName = function()
{
  if (region.isAdmin == 'expr')
  {
      return "../region/?region=edit";
 
  }else if(region.isAdmin)
  {
	  return "/region/";
  }
  else
  {
    // return "region.php";
	return "/region/";
  }
}
