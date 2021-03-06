<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Lakshadweep</title>
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
		if($(this).find('.mphotoDetails').height() == 134)
		{
			$(this).find('.mname').css({"font":"12pt opensans"});
		}
		$(this).find('.mphotoDetails').css({"transform":"translate(0px,"+neg+")","-ms-transform":"translate(0px,"+neg+")","-webkit-transform":"translate(0px,"+neg+")"});
		
	},function(){
		
		$(this).find('.mphotoDetails').css({"transform":"translate(0px,0px)","-ms-transform":"translate(0px,0px)","-webkit-transform":"translate(0px,0px)"});
	});
		
	
		function drawChart()
		{

		var data1 = google.visualization.arrayToDataTable([
          ['Year', 'INC' , 'JD(U)'],
          ['2009',  1 , 0],
          ['2004',  0 , 1],
          ['1999',  1 , 0],
          ['1998',  1 , 0]
        ]);
/*total assembly const - 126*/
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

         var chart2 = new google.visualization.Timeline(document.getElementById('pastAdministrators'));
         var dataTable = new google.visualization.DataTable();
          dataTable.addColumn({ type: 'string', id: 'CM' });
          dataTable.addColumn({ type: 'string', id: 'Party' });
		  dataTable.addColumn({ type: 'date', id: 'Start' });
		  dataTable.addColumn({ type: 'date', id: 'End' });

		  dataTable.addRows([
['U. R. Panicker','',new Date(1956,11,1),new Date(1956,11,7)],
['S. Mony','',new Date(1956,11,8),new Date(1958,9,21)],
['C. K. Balakrishna Nair','',new Date(1958,9,22),new Date(1961,12,5)],
['M. Ramunny','',new Date(1961,12,6),new Date(1965,4,8)],
['C. H. Naire','',new Date(1965,4,9),new Date(1969,10,31)],
['K. D. Menon','',new Date(1969,11,1),new Date(1973,4,30)],
['W. Shaiza','',new Date(1973,5,22),new Date(1975,6,21)],
['M. C. Verma','',new Date(1975,6,22),new Date(1977,2,14)],
['S. D. Lakhar','',new Date(1977,2,21),new Date(1978,7,30)],
['P. M. Nair','',new Date(1978,7,31),new Date(1981,6,15)],
['Pradip Mehra','',new Date(1981,6,15),new Date(1982,7,21)],
['Omesh Saigal','',new Date(1982,7,21),new Date(1985,7,9)],
['J. Sagar','',new Date(1985,7,9),new Date(1987,9,8)],
['Wajahat Habibullah','',new Date(1987,9,8),new Date(1990,1,31)],
['Pradip Singh','',new Date(1990,2,1),new Date(1990,5,1)],
['S. P. Aggarwal','',new Date(1990,5,2),new Date(1992,5,3)],
['Satish Chandra','',new Date(1992,5,4),new Date(1994,9,9)],
['G.S. Chima','',new Date(1994,9,9),new Date(1996,6,14)],
['Rajeev Talwar','',new Date(1996,8,1),new Date(1999,6,1)],
['R. K. Varma','',new Date(1999,6,1),new Date(1999,8,20)],
['Chaman Lal','',new Date(1999,8,21),new Date(2001,4,30)],
['R. K. Verma','',new Date(2001,4,30),new Date(2001,6,19)],
['K. S. Mehra','',new Date(2001,6,19),new Date(2004,6,20)],
['S. P. Singh','',new Date(2004,6,21),new Date(2004,11,21)],
['Parimal Rai','',new Date(2004,11,22),new Date(2006,8,11)],
['Rajendra Kumar','',new Date(2006,8,11),new Date(2006,12,21)],
['B. V. Selvaraj','',new Date(2006,12,22),new Date(2009,5,16)],
['Satya Gopal','',new Date(2009,5,27),new Date(2009,7,12)],
['J. K. Dadoo','',new Date(2009,7,13),new Date(2011,6,15)],
['Amar Nath','',new Date(2011,7,11),new Date(2012,11,6)],
['H. Rajesh Prasad','',new Date(2012,11,7),new Date()]
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
			LAKSHADWEEP
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">10 November 1956</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">1</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Administrator
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/lakshadweep/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">H.Rajesh Prasad</div>
						<div class="mparty"></div>
						<div class="mpost"></div>
						</div>
					</div>
					
				</div>
			</div>
			<div id="rightPersonalities">
				<div class="mdesignation">
				Other notable persons
				</div>
				<div class="wrapperOthers">
					<div id="minister1" class="photo">
					<img src="/Resources/images/state/lakshadweep/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Adv.M.Hamdullah Sayeed</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Member of Parliament</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/lakshadweep/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">J.Ashok Kumar</a></div>
						<div class="mparty"><a href=""></a></div>
						<div class="mpost">Collector</div>
						</div>
					</div>
					
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			     <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">JD(U)</a>
			</div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Administrators of Lakshadweep</div>
		<div id="pastAdministrators" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
