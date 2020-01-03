<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tvc-news-1 pt" id="news1">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
        </section>
        <section class="tvc-news-2 pt" id="news2">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone2"></xsl:apply-templates>
		</section>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1">
        <xsl:if test="position()=1">
            <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
                <div class="row">
                    <xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News1">
        <xsl:if test="position()&gt;0 and position()&lt;2">
            <div class="col-sm-12 col-md-8 col-lg-6 news-big">
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
        <xsl:if test="position()&gt;1 and position()&lt;8">
            <div class="col-sm-6 col-md-4 col-lg-3 news-small">
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
   <xsl:template match="Zone" mode="Zone2">
    <div class="container">
        <div class="article-title-red-line">
            <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
        </div>
        <div class="main-nav">
            
            <xsl:apply-templates select="Zone" mode="Zone222"></xsl:apply-templates>
        </div>
        <div class="main-content">
            <xsl:apply-templates select="Zone" mode="Zone223"></xsl:apply-templates>
        </div>
    </div>
   </xsl:template>
  
   <xsl:template match="Zone" mode="Zone222">
        <div class="item">
            <xsl:attribute name="data-tab">
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position()=1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </div>
   </xsl:template>
   <xsl:template match="Zone" mode="Zone223">
        <div class="content-item">
            <xsl:attribute name="data-content">
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position()=1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">content-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="row">
                <xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
            </div>
        </div>
   </xsl:template>
   <xsl:template match="News" mode="News2">
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