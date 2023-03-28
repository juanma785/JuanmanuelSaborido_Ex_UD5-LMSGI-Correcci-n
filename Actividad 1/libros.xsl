<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h2>Nombre y Apellidos: Juan Manuel Saborido Baena</h2>
        <ul>
            <xsl:for-each select="bib/book">
            <li><xsl:value-of select="title"/>
            <xsl:choose>
                <xsl:when test="publisher!=''">
                <xsl:text> - "</xsl:text>
                <xsl:value-of select="publisher"/>
                <xsl:text>" (</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text> - (</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:value-of select="year"/>
            <xsl:text>)</xsl:text>
            <br/>
            </li>
            </xsl:for-each>
        </ul>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>