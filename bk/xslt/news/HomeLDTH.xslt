<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-chart-reason pt">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
         <div class="container">
            <div class="article-title-red-line">
                <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
            </div>
            <div class="row">
                <xsl:apply-templates select="News"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-12 col-sm-6 col-md-3">
            <figure>
                <div class="figure-image">
                    <div class="wrapper">
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                </div>
                <figcaption>
                    <p> <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>