<%@ page import="org.openmrs.module.openhmis.inventory.web.ModuleWebConstants" %>
<%@ page import="org.openmrs.module.openhmis.inventory.web.PrivilegeWebConstants" %>

<%@ include file="/WEB-INF/template/include.jsp"%>

<openmrs:require allPrivileges="<%= PrivilegeWebConstants.INVENTORY_PAGE_PRIVILEGES %>"
                 otherwise="/login.htm"
                 redirect="<%= ModuleWebConstants.INVENTORY_PAGE %>" />
<openmrs:message var="pageTitle" code="openhmis.inventory.title" scope="page"/>

<%@ include file="/WEB-INF/template/header.jsp" %>
<%@ include file="template/localHeader.jsp"%>

<openmrs:htmlInclude file='<%= ModuleWebConstants.MODULE_RESOURCE_ROOT + "js/screen/inventoryReports.js" %>' />

<input id="reportUrl" type="hidden" value="<%= ModuleWebConstants.JASPER_REPORT_PAGE %>" />

<h2><spring:message code="openhmis.inventory.admin.reports" /></h2>

<table style="width: 99%">
  <tr>
    <td style="vertical-align: top; width: 250px;">
      <br />
      <a href="${pageContext.request.contextPath}<%= ModuleWebConstants.INVENTORY_PAGE %>"><spring:message code="openhmis.inventory.admin.pending"/></a><br />
      <a href="${pageContext.request.contextPath}<%= ModuleWebConstants.INVENTORY_CREATION_PAGE %>"><spring:message code="openhmis.inventory.admin.create"/></a><br />
      <b>
      <spring:message code="openhmis.inventory.admin.reports"/>
      </b>
    </td>
    <td>
      <c:if test="${stockTakeReport != null}" >
        <h3>${stockTakeReport.name}</h3>
        <div style="color: grey">${stockTakeReport.description}</div>
        <br />
        <div>
          <form id="stockTakeReport" onsubmit="return false;">
            <label for="stockroomId">Stockroom: </label>
            <select id="stockroomId">
              <option value=""></option>
              <c:forEach var="stockroom" items="${stockrooms}">
                <option value="${stockroom.id}">${stockroom.name}</option>
              </c:forEach>
            </select>
            <input id="stockTakeReportId" type="hidden" value="${stockTakeReport.reportId}" />
            <br /><br />
            <input id="generateTakeReport" type="submit" value="Generate Report"/>
          </form>
        </div>
        <br />
        <hr>
      </c:if>

      <c:if test="${stockCardReport != null}" >
        <h3>${stockCardReport.name}</h3>
        <div style="color: grey">${stockCardReport.description}</div>
        <br />
        <div>
          <form id="stockCardReport" onsubmit="return false;">
            <label for="itemSearch">Item: </label>
            <input id="itemSearch" style="width: 350px" type="text" placeholder="Item Name" />
            <input id="item-uuid" type="hidden" />
            <br />
            <br />
            <label for="beginDate">Begin Date</label>
            <input id="beginDate" type="date" />

            <label for="endDate">End Date</label>
            <input id="endDate" type="date" />

            <input id="stockCardReportId" type="hidden" value="${stockCardReport.reportId}" />
            <br /><br />
            <input id="generateCardReport" type="submit" value="Generate Report" />
          </form>
        </div>
      </c:if>
    </td>
  </tr>
</table>

<%@ include file="/WEB-INF/template/footer.jsp" %>