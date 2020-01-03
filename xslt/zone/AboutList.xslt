<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
       
        <div class="nav-mobile">Danh mục<em class="mdi mdi-chevron-down"></em></div>
        <div class="main-wrap">
            <ul> 
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
            </ul>
        </div>
    
    </xsl:template>
    <xsl:template match="Zone">
        
        <li>
            <xsl:attribute name="data-nav">
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position()=1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
        
        
    </xsl:template>
</xsl:stylesheet>