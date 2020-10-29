<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        
    </xsl:template>
    <xsl:template match="Zone">
        <div class="main-content">
            <div class="content-item active" data-content="1">
                <div class="row">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                    
                </div>
            </div>
        </div>
    
    </xsl:template>
    <xsl:template match="News">
        <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="figure-news">
                <div class="figure-image">
                    <div class="wrapper">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                </div>
                <figcaption>
                    <time><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
                    <h2>
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </a>
                    </h2>
                    <div class="brief-content">
                        <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                    </div>
                </figcaption>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>