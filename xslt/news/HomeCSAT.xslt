<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-chart-number pt">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</section>
    </xsl:template>
    <xsl:template match="Zone">
		<div class="container">
			<div class="article-title-red-line">
				<p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
			</div>
			<xsl:apply-templates select="News"></xsl:apply-templates>
		</div>
    </xsl:template>
    <xsl:template match="News">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
    </xsl:template>
</xsl:stylesheet>
