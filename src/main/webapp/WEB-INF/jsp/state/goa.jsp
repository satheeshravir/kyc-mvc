<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Goa</title>
<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/state.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css">
<script type="text/javascript" src="/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="/Resources/scripts/signin.js"></script>
<script type="text/javascript" src="/Resources/scripts/analytics.js"></script>

</head>
<body>
<jsp:include page="../header.jsp" />
<script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization',
       'version':'1','packages':['timeline','corechart']}]}"></script>



<script type="text/javascript">
$(document).ready(function(){
	
	$('.mphoto,.photo').hover(function(){
		var ht = $(this).find('.mphotoDetails').height();
		ht = ht+10;
		var neg = -ht;
		neg = neg+'px';
		$(this).find('.mphotoDetails').css({"transform":"translate(0px,"+neg+")","-ms-transform":"translate(0px,"+neg+")","-webkit-transform":"translate(0px,"+neg+")"});
	},function(){
		var ht = $(this).find('.mphotoDetails').height();
		ht = ht+10;
		ht = ht+'px';
		$(this).find('.mphotoDetails').css({"transform":"translate(0px,0px)","-ms-transform":"translate(0px,0px)","-webkit-transform":"translate(0px,0px)"});
	});
	
		function drawChart()
		{

		var data1 = google.visualization.arrayToDataTable([
          ['Year', 'BJP', 'INC', 'IND','Others'],
          ['2012',  21,      9, 5,5],
          ['2007',  14,     16, 2,8],
          ['2002',  17,      16, 1,6],
          ['1999',  10,    21, 1,8]
        ]);
/*total assembly const - 224*/
        var options1 = {
          title: 'Past Legislative Assembly Elections',
          titleTextStyle:{color:'#7c7878',bold:false,fontName:'opensans',fontSize:'18'},
          hAxis:{textStyle:{color:'#7c7878',fontName:'opensans',fontSize:'12'}},
          vAxis: {textStyle:{color:'#7c7878',fontName:'opensans',fontSize:'12'},title: 'Seats won',  titleTextStyle: {color:'#7c7878',italic:false,fontName:'opensans',fontSize:'16'} ,baselineColor:'#CCC'},
          tooltip:{textStyle:{fontName:'opensans',fontSize:'14'}},
          backgroundColor:'#f3f1f1',
          legend:{textStyle:{color:'#7c7878',fontName:'opensans',fontSize:'12'}},
          focusTarget:'category'
    		
        };

        var chart1 = new google.visualization.ColumnChart(document.getElementById('chartContainer'));
        chart1.draw(data1, options1);

         var chart2 = new google.visualization.Timeline(document.getElementById('pastChiefMinisters'));
         var dataTable = new google.visualization.DataTable();
          dataTable.addColumn({ type: 'string', id: 'CM' });
          dataTable.addColumn({ type: 'string', id: 'Party' });
		  dataTable.addColumn({ type: 'date', id: 'Start' });
		  dataTable.addColumn({ type: 'date', id: 'End' });

		  dataTable.addRows([
		  ['Dayanand Bandodkar','MGP',new Date(1963,12,20),new Date(1966,12,2)],
		  ['President\'s rule','',new Date(1966,12,2),new Date(1967,4,5)],
		  ['Dayanand Bandodkar','MGP',new Date(1967,4,5),new Date(1973,8,12)],
		  ['Shashikala Kakodkar','MGP',new Date(1973,8,12),new Date(1979,4,27)],
		  ['President\'s rule','',new Date(1979,4,27),new Date(1980,1,16)],
		  ['Pratapsingh Rane','INC',new Date(1980,1,16),new Date(1990,3,27)],
		  ['Churchill Alemao','Progressive Democratic Front',new Date(1990,3,27),new Date(1990,4,14)],
		  ['Dr. Luis Proto Barbosa','Progressive Democratic Front',new Date(1990,4,14),new Date(1990,12,14)],
		  ['President\'s rule','',new Date(1990,12,14),new Date(1991,1,25)],
		  ['Ravi S. Naik','INC',new Date(1991,1,25),new Date(1993,5,18)],
		  ['Dr Wilfred de Souza','INC',new Date(1993,5,18),new Date(1994,4,2)],
		  ['Ravi S. Naik','INC',new Date(1994,4,2),new Date(1994,4,8)],
		  ['Dr Wilfred de Souza','INC',new Date(1994,4,8),new Date(1994,12,16)],
		  ['Pratapsing Rane','INC',new Date(1994,12,16),new Date(1998,7,30)],
		  ['Dr Wilfred de Souza','Goa Rajiv Congress',new Date(1998,7,30),new Date(1998,11,26)],
		  ['Luizinho Faleiro','INC',new Date(1998,11,26),new Date(1999,2,9)],
		  ['President\'s rule','',new Date(1999,2,9),new Date(1999,6,9)],
		  ['Luizinho Faleiro','INC',new Date(1999,6,9),new Date(1999,11,24)],
		  ['Francisco Sardinha','Goa People\'s Congress',new Date(1999,11,24),new Date(2000,10,24)],
		  ['Manohar Parrikar','BJP',new Date(2000,10,24),new Date(2005,2,2)],
		  ['Pratapsing Rane','INC',new Date(2005,2,2),new Date(2005,3,4)],
		  ['President\'s rule','',new Date(2005,3,4),new Date(2005,6,7)],
		  ['Pratapsing Rane','INC',new Date(2005,6,7),new Date(2007,6,8)],
		  ['Digambar Kamat','INC',new Date(2007,6,8),new Date(2012,3,9)],
		  ['Manohar Parrikar','BJP',new Date(2012,3,9),new Date()]
		    
		    ]);
			var options2 = {
				timeline:{
					barLabelStyle:{color:'#7c7878',fontName:'opensans',fontSize:'12'},
					rowLabelStyle:{color:'#6d93ff',fontName:'opensans',fontSize:'14'}
				},
				backgroundColor:'#fff'
			};
		  chart2.draw(dataTable,options2);


         }
         google.setOnLoadCallback(drawChart);




		
});
</script>

<div id="wrapper">
	<div id="container">
		<div id="stateInfo">
			<div id="stateName">
			GOA
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1987</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">2</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/goa/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Manohar Parrikar</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/goa/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Bharat Vir Wanchoo</div>
						<div class="mparty"></div>
						<div class="mpost"></div>
						</div>
					</div>
					
				</div>
			</div>
			<div id="rightPersonalities">
				<div class="mdesignation">
				Other notable politicians
				</div>
				<div class="wrapperOthers">
					<div id="minister1" class="photo">
					<img src="/Resources/images/state/goa/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Digambar Kamat</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/goa/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Shripad Naik</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						<div class="mpost">Member of Parliament - Lok Sabha</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/goa/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Shantaram Naik</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Member of Parliament - Rajya Sabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">MAG</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Goa</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
