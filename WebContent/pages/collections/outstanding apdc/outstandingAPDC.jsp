<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma","no-cache");
%>
<!-- datepicker -->

<!--  -->
<script>
	
</script>

<div id="menuDiv">
	<div id="mainNav" name="mainNav">
		<div id="smoothmenu1" name="smoothmenu1" class="ddsmoothmenu">
			<ul>
				<li><a id="btnExit">Exit</a></li>
			</ul>
		</div>
	</div>
</div>


<!-- hidden fields -->
<input type="hidden" id="page" name="page" value="${page}">
<input type="hidden" id="lineCd" name="lineCd" value="${lineCd}">
<input type="hidden" id="errorMsg" name="errorMsg" value="${errorMsg}">
<input type="hidden" id="userId" name="userId" value="${adhocUser}">
<input type="hidden" id="reportTitle" name="reportTitle"
	value="${reportTitle}">
<input type="hidden" id="reportName" name="reportName"
	value="${reportName}">
<input type="hidden" id="reportUrl" name="reportUrl"
	value="${reportUrl}">
<input type="hidden" id="selDestination" name="selDestination"
	value="screen">
<%-- <input type="text" id="letterType" name= "letterType" value = "${letterType}"> --%>
<!-- end hidden fields -->

<br />
<br />
<div id="outerDiv" name="outerDiv">
	<div id="innerDiv" name="outerDiv">
		<label id="pageTitle">Outstanding APDC</label>
	</div>
</div>
<div id="outstandingAPDCDetailsDiv">
	<div id="outstandingAPDCSectionDiv" class="sectionDiv"
		style="margin-bottom: 10px;">
		<div class="sectionDiv" id="outstandingAPDCMainDiv"
			style="width: 90%; height: 400px; margin-top: 40px; margin-left: 45px; margin-bottom: 10px;">
			<div id="parametersDiv"
				style="width: 97%; margin-left: 8px; margin-top: 9px; float: left;">

				<!-- date type rdo div -->
				<div class="sectionDiv" id="dateParameterDiv"
					style="width: 30%; height: 75px; margin-left: 150px; margin-top: 9px; float: left; border-color: white;">
					<table style="margin-top: 10px; width: 100%;">
						<tr>
							<td class="rightAligned" style="width: 25%;">Date</td>
						</tr>
						<tr>
							<td class="rightAligned" style="width: 25%;"></td>
							<td><input type="radio" id="rdoAsOf" name="dateType"
								value="1"
								style="margin-left: 15px; float: left; margin-left: 50px;"
								checked="" /> <label for="rdoAsOf" style="margin-top: 3px;">As of</label></td>
						</tr>
						<tr>
							<td class="rightAligned" style="width: 25%;"></td>
							<td class="rightAligned"><input type="radio"
								id="rdoByPeriod" name="dateType" value="2"
								style="margin-left: 15px; float: left; margin-left: 50px;"
								checked="" /> <label for="rdoByPeriod" style="margin-top: 3px;">By Period</label></td>
						</tr>
					</table>
				</div>
				
				<!-- date type input div -->
				<div class="sectionDiv" id="dateTypeDiv"
					style="width: 40%; height: 75px; margin-top: 9px; float: left; border-color: white;">
					<table style="margin-top: 10px; width: 100%;">
						<tr>
						<td>
					<!-- as of div -->
					<div id="asOfDiv">
						<table style="margin-top: 10px; width: 100%;">
							<tr>
								<td class="rightAligned" style="width: 5%;">As Of</td>
								<td class="leftAligned" style="width: 42%;">
									<div
										style="float: left; border: solid 1px gray; width: 108px; height: 20px; margin-right: 3px;">
										<input type="text"
											style="float: left; margin-top: 0px; margin-right: 3px; width: 74%; border: none;"
											name="asOfDate" id="txtAsOfDate" readonly="readonly"/>
										<img id="imgAsOfDate" alt="asOfDate" style="height: 18px;"
											class="hover"
											src="${pageContext.request.contextPath}/images/misc/but_calendar.gif" />
									</div>
								</td>
							</tr>
						</table>
					</div>
					
					<!-- from to div -->
					<div id="fromToDiv">
						<table style="margin-top: 10px; width: 100%;">
							<tr>
								<td class="rightAligned" style="width: 5%;">From</td>
								<td class="leftAligned" style="width: 42%;">
									<div
										style="float: left; border: solid 1px gray; width: 108px; height: 20px; margin-right: 3px;">
										<input type="text"
											style="float: left; margin-top: 0px; margin-right: 3px; width: 74%; border: none;"
											name="fmDate" id="txtFromDate" readonly="readonly"/>
										<img id="imgFromDate" alt="imgFromDate" style="height: 18px;"
											class="hover"
											src="${pageContext.request.contextPath}/images/misc/but_calendar.gif" />
									</div>
								</td>
							</tr>
							<tr>
								<td class="rightAligned" style="width: 5%;">To</td>
								<td class="leftAligned" style="width: 42%;">
									<div
										style="float: left; border: solid 1px gray; width: 108px; height: 20px; margin-right: 3px;">
										<input type="text"
											style="float: left; margin-top: 0px; margin-right: 3px; width: 74%; border: none;"
											name="toDate" id="txtToDate" readonly="readonly"/>
										<img id="imgToDate" alt="imgToDate" style="height: 18px;"
											class="hover"
											src="${pageContext.request.contextPath}/images/misc/but_calendar.gif" />
									</div>
								</td>
							</tr>
						</table>
					</div>
					</td>
					</tr>
					</table>
				</div>
				
				<div class="sectionDiv" id="miscDiv"
					style="width: 50%; margin-left: 22%; margin-top: 9px; margin-bottom: 20px; float: left; border-color: white;">
					<table style="margin-top: 10px; width: 100%;">
						<tr>
							<td class="rightAligned" style="width: 25%;">Branch</td>
							<td class="leftAligned"><select name="selBranch"
								id="selBranch" style="width: 30%;">
									<option value=""></option>
									<c:forEach var="branch" items="${ branchList }">
										<option>${branch.issCd}</option>
									</c:forEach>
							</select> <input id="txtBranch" name="capsField" class="leftAligned"
								type="text" style="width: 65%;" value="" title="Branch Name"
								disabled /></td>
						</tr>
					</table>
				</div>
				<br />
				<br /> <br />
				<div class="sectionDiv" id="printDiv"
					style="width: 97%; margin-left: 8px; margin-top: 9px; float: left; border-color: white;">
					<div id="printofferLetterButtonsDiv" align="center">
						<input type="button" class="button" style="width: 90px;"
							id="btnCancel" value="Cancel"> <input type="button"
							class="button" style="width: 90px;" id="btnPrint" value="Print">
					</div>
				</div>

			</div>
		</div>
		<div id="blankDiv"></div>
	</div>
</div>

<script type="text/javascript">
	var page = $F("page");
	var reportName = 'OUTSTANDING_APDC_ASOF_REP';
	var issCd = '';
	var dateType = 1;
	makeInputFieldUpperCase();
	
	$("rdoAsOf").checked = true;
	$("fromToDiv").hide();
	
	var asOfCalendar = new dhtmlXCalendarObject({
		input : "txtAsOfDate",
		button : "imgAsOfDate"
	});
	
	$$("input[name='dateType']").each(function(radio) {
		radio.observe("click", function() {
			toogleDateTypeOption(radio.value);
		});
	});
	
	function toogleDateTypeOption(option) {
		if (option == '1') {
			$("asOfDiv").show();
			$("fromToDiv").hide();
			dateType = 1;
			reportName = 'OUTSTANDING_APDC_ASOF_REP';
		} else if (option == '2') {
			$("asOfDiv").hide();
			$("fromToDiv").show();
			dateType = 2;
			reportName = 'OUTSTANDING_APDC_FROM_TO_REP';
			var fromCalendar = new dhtmlXCalendarObject({
				input : "txtFromDate",
				button : "imgFromDate"
			});
			
			var toCalendar = new dhtmlXCalendarObject({
				input : "txtToDate",
				button : "imgToDate"
			});
		}
		//reset date input fields
		$("txtAsOfDate").value = "";
		$("txtFromDate").value = "";
		$("txtToDate").value = "";
	}
	

	$("btnExit").observe(
			"click",
			function() {
				goToModule(divToUpdate, contextPath + "/pages/main.jsp",
						"Please wait.....", "Home");
			});

	$("btnCancel").observe(
			"click",
			function() {
				goToModule(divToUpdate, contextPath + "/pages/main.jsp",
						"Please wait.....", "Home");
			});
	
	$("btnPrint")
	.observe(
			"click",
			function() {
				var fromDate = $F("txtFromDate");
				var toDate = $F("txtToDate");
				var userId = $F("userId");
				if (!compareDate(fromDate, toDate)) {
					new Ajax.Updater(
							"mainContents",
							contextPath
									+ "/OutstandingAPDCController",
							{
								evalScripts : true,
								method : "POST",
								parameters : {
									action : "printReport",
									fromDate : fromDate,
									toDate : toDate,
									branchCd : issCd,
									userId : userId,
									reportName : reportName
								},
								onCreate : showNotice("Generating report. Please wait..."),
								onComplete : function(response) {
									printOutputPdf();
								}
							});
				} else {
					showMessageBox(
							"\"From Date\" must be earlier from \"To Date\".",
							"E");
				}
			});
	
	$("selBranch").observe("change", function(){
		var selected = $("selBranch").getValue();
		getBranchName(selected,"txtBranch");
	});
	
	function getBranchName(selected,txtBranchName){
		var branchCd = [
		                 <c:forEach var="branch" items="${branchList}" varStatus="loop">
		                   "${branch.issCd}"
		                   <c:if test="${!loop.last}">,</c:if>
		                 </c:forEach>
		               ];
		var branchName = [
		                 <c:forEach var="branch" items="${branchList}" varStatus="loop">
		                   "${branch.issName}"
		                   <c:if test="${!loop.last}">,</c:if>
		                 </c:forEach>
		               ];
		var bName = ''; 
		for (var i = 0; i < branchCd.length; i++) {
		if (selected == branchCd[i]) {
			bName = branchName[i];
			issCd = branchCd[i];
		}
		}
		$(txtBranchName).writeAttribute("value",bName);
		}

	function printOutputPdf() {
		var reportUrl = $F("reportUrl");
		var reportTitle = $F("reportTitle");
		var errorMsg = $F("errorMsg");
		if (!checkBlankNull(errorMsg)) {
			hideNotice("");
			showMessageBox(errorMsg, "E");
		} else {
			var content = contextPath
					+ "/OutputController?action=showPdf&reportUrl=" + reportUrl;
			new Ajax.Request(contextPath + "/GIISUserController", {
				action : "POST",
				asynchronous : false,
				parameters : {
					action : "setReportParamsToSession",
					reportUrl : content,
					reportTitle : $F("reportTitle")
				},
				onComplete : function(response) {
					window.open('pages/report.jsp', '',strWindowFeatures);
							//'location=0, toolbar=0, menubar=0, fullscreen=1');
					hideNotice("");
				}
			});
		}
	}
	
	function compareDate(fromDate, toDate) {
		var date1 = new Date(fromDate);
		var date2 = new Date(toDate);
		if (date1.getTime() > date2.getTime()) {
			return true
		}else
			return false;
	}

	function checkBlankNull(str) {
		if (str == '' || str == null)
			return true;
		return false;
	}
</script>
