<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-news pt">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</section>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="container">
            <div class="article-title-red-line">
                <p><xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></p>
            </div>
            <div class="row">
                <xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
                <xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="News1">
        <xsl:if test="position()&gt;0 and position()&lt;2">
            <div class="col-sm-6 col-md-4 col-lg-6">
                <div class="figure-news big-news">
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
                    </figcaption>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News2">
        <xsl:if test="position()&gt;1 and position()&lt;4">
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
                        <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                    </figcaption>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>