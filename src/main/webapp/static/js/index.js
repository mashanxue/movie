$(function() {
	var s1 = $("#sidebar span");
	var s2 = $("#sidebar>ul>li>ul");
	var s3 = $("#sidebar>ul>li>ul>li");
	var count = 0;
	var count1 = 0;
	console.log(s3);
	s1.click(function() {
		count = s1.index(this);
		s2.eq(count).slideToggle();
		s2.not(s2.eq(count)).slideUp();
	})
	s3.click(function() {
		count1 = s3.index(this);
		switch(count1){
			case 0:
				$("#content iframe").attr("src","jyzFindBcoundServicelet");
			break;
			case 1:
				$("#content iframe").attr("src","findReportServlet");
			break;
			case 2:
				$("#content iframe").attr("src","delNews.jsp");
			break;
			case 3:
				$("#content iframe").attr("src","delNews.jsp");
			break;
			case 4:
				$("#content iframe").attr("src","showUnreviewed");
			break;
			case 5:
				$("#content iframe").attr("src","showAllUserServlet");
			break;
			case 6:
				$("#content iframe").attr("src","sendMail.jsp");
			break;

			case 7:
				$("#content iframe").attr("src","sendAllUser.jsp");
			break;

			case 8:
				$("#content iframe").attr("src","jyzFindBcoundServicelet");
				break;
			case 9:
				$("#content iframe").attr("src","findReportServlet");
				break;
			case 10:
				$("#content iframe").attr("src","delNews.jsp");
				break;
			case 11:
				$("#content iframe").attr("src","delNews.jsp");
				break;
			case 12:
				$("#content iframe").attr("src","showUnreviewed");
				break;
			case 13:
				$("#content iframe").attr("src","showAllUserServlet");
				break;
			case 14:
				$("#content iframe").attr("src","new.htm");
				break;
		}
	})
	
	
})