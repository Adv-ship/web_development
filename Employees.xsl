<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
<title>Employee Information</title>

<style>
body{
    font-family: Arial, sans-serif;
    background-color:#f2f2f2;
    margin:0;
    padding:20px;
}
h2{
    text-align:center;
    color:darkblue;
}
table{
    width:80%;
    margin:auto;
    border-collapse:collapse;
    background:white;
}
th{
    background:darkblue;
    color:white;
    padding:10px;
    border:1px solid black;
}
td{
    padding:8px;
    text-align:center;
    border:1px solid black;
}
.name{
    color:darkred;
    font-weight:bold;
}
</style>

</head>

<body>

<h2>Employee Information</h2>

<table>
<tr>
    <th>Name</th>
    <th>Address</th>
    <th>Contact</th>
</tr>

<xsl:for-each select="Employees/employee">
<tr>
    <td class="name"><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="address"/></td>
    <td><xsl:value-of select="contact"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>