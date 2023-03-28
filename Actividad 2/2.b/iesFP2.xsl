<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h4>Nombre y apellidos: Juan Manuel Saborido Baena </h4>
            <xsl:for-each select="ies/ciclos/ciclo">
            <p>
                <xsl:text>"</xsl:text>
                <xsl:value-of select="nombre"/>
                <xsl:text>"
                    
                </xsl:text>
            </p>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>