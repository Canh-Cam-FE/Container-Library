<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-chart-number pt">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
        </section>
        <section class="tvc-project-list pt">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone2"></xsl:apply-templates>
        </section>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1">
        <xsl:if test="position()=1">
            <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
                <div class="row mainbox">
                    <xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News1">
        <div class="col-12">
            <div class="home-chart-number-item" style="width: 100%">
                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone2">
        <xsl:if test="position()=2">
             <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
                <div class="row">
                    <xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News2">
        <xsl:if test="position()&gt;0 and position()&lt;3">
            <div class="col-sm-6">
                <div class="figure-project">
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
                        <h3 class="text-left">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </a>
                        </h3>
                        <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                    </figcaption>
                </div>
            </div>
        </xsl:if>
    
        <xsl:if test="position()&gt;2 and position()&lt;7">
            <div class="col-sm-6 col-lg-3">
                <div class="figure-project">
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
                        <h4 class="text-left">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </a>
                        </h4>
                    </figcaption>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>