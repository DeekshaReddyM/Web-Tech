<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body bgcolor="lightblue">
<h2> Our Books collection</h2>
<table border="3">
<tr bgcolor="lightpink">
<th align="left">Title</th>
<th align="left">Author</th>
<th align="left">Year</th>
<th align="left">Price</th>
</tr>
<xsl:for-each select="bookstore/book">
<tr>
<td><xsl:value-of select="title"/></td>
<xsl:choose>
<xsl:when test="price &gt; 30">
<td bgcolor="white"><xsl:value-of select="author"/></td>
</xsl:when>
<xsl:when test="price &gt; 10">
<td bgcolor="white"><xsl:value-of select="author"/></td>
</xsl:when>
<xsl:otherwise>
<td><xsl:value-of select="author"/></td>
</xsl:otherwise>
</xsl:choose>
<td><xsl:value-of select="year"/></td>
<xsl:choose>
<xsl:when test="price &gt; 30">
<td bgcolor="white"><xsl:value-of select="price"/></td>
</xsl:when>
<xsl:when test="price &gt; 10">
<td bgcolor="white"><xsl:value-of select="price"/></td>
</xsl:when>
<xsl:otherwise>
<td><xsl:value-of select="price"/></td>
</xsl:otherwise>
</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>