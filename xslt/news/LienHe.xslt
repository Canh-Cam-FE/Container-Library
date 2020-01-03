<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="box-customer">
            <div class="row">
                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-md-4">
            <figure>
                <div class="image">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <figcaption>
                    <div class="title">
                        <h4><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of> </h4>
                    </div>
                    <div class="chuc-danh">
                        <p><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></p>
                    </div>
                    <div class="chuc-danh">
                        <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                    </div>
                    <div class="number-phone"><xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of></div>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>