<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <body>  
        
            <h3>Nombre y Apellidos: Juan Manuel Saborido Baena</h3>
        
        <ul>
            <xsl:for-each select="ies/ciclos/ciclo">
            <ul>
                "<xsl:value-of select="nombre"/>"
            </ul>
            </xsl:for-each>
        </ul>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>