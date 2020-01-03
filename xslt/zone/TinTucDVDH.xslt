<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="container">
            <div class="article-title-red-line">
                <p><xsl:value-of select="/ZoneList/ZoneTitle" disable-output-escaping="yes"></xsl:value-of></p>
            </div>
            <div class="main-nav">
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <!-- <xsl:template match="Zone">
        <div class="item">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </div>
    </xsl:template> -->
</xsl:stylesheet>