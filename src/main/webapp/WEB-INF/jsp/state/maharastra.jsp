<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Maharashtra</title>
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
	/*$('#chartContainer').highcharts({
            chart: {
                type: 'column',
                backgroundColor:"#f3f1f1",

            },
            title: {
                text: 'Past Assembly Elections',
                style:{"font":"14pt opensans","color":"#7c7878"}
            },
            xAxis: {
                categories: [
                    '2011',
                    '2006',
                    '2001',
                    '1996'
                ],
                labels:{
                	style:{"font":"8pt opensans","color":"#7c7878"}
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text:'Seats Won',
                    style:{"font":"12pt opensans","color":"#7c7878"}
                },
                labels:{
                	style:{"font":"8pt opensans","color":"#7c7878"}
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0;font:10pt opensans">{series.name}: </td>' +
                    '<td style="padding:0"><b>{point.y} </b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true,

            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: [{
                name: 'DMK Alliance',
                data: [31, 163,37,221]
    
            }, {
                name: 'AIADMK Alliance',
                data: [203,69,196,4]
    
            },{
                name:'Others',
                data:[0,2,1,9]
            }],
            credits:{
            	enabled:false,
            }
        });*/
		function drawChart()
		{

		var data1 = google.visualization.arrayToDataTable([
          ['Year', 'INC','NCP' ,'SS', 'BJP','Others'],
          ['2009',  82,  62,  45,  46,  70],
          ['2004',  69,  71,  62,  54,  32],
          ['1999',  75,  58,  69,  56,  30],
          ['1994',  80,   0,  73,  65,  70]
        ]);
/*total assembly const - 294*/
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
		    [ 'Yashwantrao Chavan','INC', new Date(1960, 5, 1), new Date(1962, 6, 19) ],
		    [ 'Marotrao Kannamwar', 'INC',     new Date(1962, 11, 20),  new Date(1963, 11, 24) ],
		  [ 'P. K. Sawant','INC' , new Date(1963, 11, 25),  new Date(1963, 12, 4) ],
		    [ 'Vasantrao Naik', 'INC', new Date(1963, 12, 5),  new Date(1967, 3, 1) ],
		    [ 'Vasantrao Naik','INC', new Date(1967, 3, 1), new Date(1972, 3, 13) ],
		    ['Vasantrao Naik','INC',new Date(1972,3,13),new Date(1975,2,20)],
		    ['Shankarrao Chavan','INC',new Date(1975,2,21),new Date(1977,4,16)],
		    ['Vasantdada Patil','INC',new Date(1977,4,17),new Date(1978,3,2)],
		    ['Vasantdada Patil','INC',new Date(1978,3,7),new Date(1978,7,18)],
		    ['Sharad Pawar','PDF',new Date(1978,4,24),new Date(1980,2,17)],
		    ['President"s rule','',new Date(1980,2,17),new Date(1980,6,8)],
		    ['Abdul Rehman Antulay','INC',new Date(1980,6,9),new Date(1982,1,12)],
		    ['Babasaheb Bhosale','INC',new Date(1982,1,21),new Date(1983,2,1)],
		    ['Vasantdada Patil','INC',new Date(1983,2,2),new Date(1985,6,1)],
		    ['Shivajirao Patil Nilangekar','INC',new Date(1985,6,3),new Date(1986,3,6)],
		    ['Shankarrao Chavan','INC',new Date(1986,3,12),new Date(1988,6,26)],
		    ['Sharad Pawar','INC',new Date(1988,6,26),new Date(1991,6,25)],
		    ['Sudhakarrao Naik','INC',new Date(1991,6,26),new Date(1993,2,22)],
		    ['Sharad Pawar','INC',new Date(1993,3,6),new Date(1995,3,14)],
		    ['Manohar Joshi','SS',new Date(1995,3,14), new Date(1999,1,31)],
		    ['Narayan Rane','SS',new Date(1999,2,1),new Date(1999,10,17)],
			['Vilasrao Deshmukh','INC',new Date(1999,10,18),new Date(2003,1,16)],
			['Sushilkumar Shinde','INC',new Date(2003,1,18),new Date(2004,10,30)],
			['Vilasrao Deshmukh','INC',new Date(2004,11,1),new Date(2008,12,4)],
			['Ashok Chavan','INC',new Date(2008,12,8),new Date(2009,10,15)],
			['Ashok Chavan','INC',new Date(2009,11,7),new Date(2010,11,9)],
		    ['Prithviraj Chavan','INC',new Date(2010,11,11),new Date()]


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
			MAHARASHTRA
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 Nov 1960</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">48</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/maharashtra/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Prithviraj Chavan</a></div>
						<div class="mparty"><a href="">INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/maharashtra/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Kateekal Sankaranarayanan</div>
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
					<img src="/Resources/images/state/maharashtra/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Sharad Pawar</a></div>
						<div class="mparty"><a href="">NCP</a></div>
						<div class="mpost">Party President</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/maharashtra/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Raj Shrikant Thackeray</a></div>
						<div class="mparty"><a href="">SS</a></div>
						<div class="mpost">Party President</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/maharashtra/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Sushilkumar Shinde</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Minster of Home Affairs</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">NCP</a>
			    <a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">SS</a>

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Maharashtra</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
