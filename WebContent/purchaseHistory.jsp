<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/blue.css">
<title>商品購入履歴</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="contents">
<h1>商品購入履歴画面</h1>
<s:if test="purchaseHistoryInfoDTOList!=null && purchaseHistoryInfoDTOList.size()>0">

<table class="list-table historytable">
<!-- 縦の列の幅を変える (10列の幅が合計100%にする)-->
<colgroup>
 <col width="8%">
 <col width="10%">
 <col width="7%">
 <col width="8%">
 <col width="8%">
 <col width="7%">
 <col width="7%">
 <col width="7%">
 <col width="13%">
 <col width="27%">
</colgroup>
<thead>
<tr>
	<th><s:label value="商品名"/></th>
	<th><s:label value="ふりがな"/></th>
	<th><s:label value="商品画像"/></th>
	<th><s:label value="発売会社名"/></th>
	<th><s:label value="発売年月日"/></th>
	<th><s:label value="値段"/></th>
	<th><s:label value="個数"/></th>
	<th><s:label value="合計金額"/></th>
	<th><s:label value="宛先名前"/></th>
	<th><s:label value="宛先住所"/></th>
</tr>
<tbody>
<s:iterator value="purchaseHistoryInfoDTOList">
<tr>
	<td><s:property value="productName"/></td>
	<td><s:property value="productNameKana"/></td>
	<td><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>'></td>
	<td><s:property value="releaseCompany"/></td>
	<td><s:property value="releaseDate"/></td>
	<td><s:property value="price"/>円</td>
	<td><s:property value="productCount"/>個</td>
	<td><s:property value="subtotal"/>円</td>
		<td><s:property value="familyName" /><span>　</span><s:property value="firstName" /></td>
	<td><s:property value="userAddress"/></td>
</tr>
</s:iterator>
</tbody>
</table>
<div class="tC mt20">
<s:form action="DeletePurchaseHistoryAction">
	<s:submit value="履歴削除" class="submit_btn" />
</s:form>
</div>
</s:if>
<s:else>
<div class="info blueText">
商品購入履歴情報がありません。
</div>
</s:else>
</div>
</body>
</html>
