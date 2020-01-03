<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-project-complete pt">
            <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
                <div class="row">
                    <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                    
                    <div class="col-lg-3">
                        <div class="home-project-complete-banner"><a href="http://www.phuongnambook.com.vn/"><img src="/Data/Sites/1/media/banner/b1.png" alt=""></img></a><a href="https://www.fahasa.com/"><img src="/Data/Sites/1/media/banner/b2.png" alt=""></img></a></div>
                    </div>
                </div>
            </div>
        </section>

    </xsl:template>
    <xsl:template match="Zone">
        <div class="col-lg-9">
            <div class="row">
                <xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
                <xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
                
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="News1">
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
    </xsl:template>
    <xsl:template match="News" mode="News2">
        <xsl:if test="position()&gt;2 and position()&lt;6">
            <div class="col-sm-6 col-lg-4">
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