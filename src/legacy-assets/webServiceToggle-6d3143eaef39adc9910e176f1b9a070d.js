//# sourceMappingURL=webServiceToggle.js.map
$(function(){$(".webServiceShowDetails").click(function(){$(this).parent().parent().parent().children(".webServiceDetails").toggle("slow",function(){})});$(".wsLabel").tooltip({})});function expandOnIndividualService(){if(window.location.hash){var a=window.location.hash.substring(1);a.startsWith("ws")&&(a=document.getElementById("webService-details-"+a.substring(2)),$(a).show("slow",function(){}))}}function expandApis(){$(".webServiceDetails").show("slow",function(){})}
function collapseApis(){$(".webServiceDetails").hide("slow",function(){})};