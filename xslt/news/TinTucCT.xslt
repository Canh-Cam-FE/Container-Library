<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tvc-news-detail pt">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9"> 
                        <div class="main-detail"> 
                            <div class="date"> 
                                <time><xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
                            </div>
                            <div class="title">
                                <h1><xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of></h1>
                            </div>
                            <div class="share">
                                <div id="sharenews"></div>
                            </div>
                            <div class="brief-content"></div>
                            <div class="full-content">
                                <div class="nas-body-article-detail">
                                    <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 scroll-on-desktop">
                        <div class="main-other">
                            <div class="title">
                                <h2>Tin tức khác</h2>
                            </div>
                            <div class="main-item">
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                                <div class="item">
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="Url"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of select="Title"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:text disable-output-escaping="yes">Xem Thêm</xsl:text>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="main-other" style="margin-top: 15px">
                            <div class="title">
                                <h2>Đơn vị đồng hành</h2>
                            </div>
                            <div class="main-item">
                                <xsl:apply-templates select="/NewsDetail/NewsRelated"></xsl:apply-templates>
                                <div class="item">
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="Url"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of select="Title"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:text disable-output-escaping="yes">Xem Thêm</xsl:text>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="item">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
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
                        <div class="date">
                            <time><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
                        </div>
                        <div class="title">
                            <h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
                        </div>
                    </figcaption>
                </figure>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="NewsRelated">
         <div class="item">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
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
                        <div class="date">
                            <time><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
                        </div>
                        <div class="title">
                            <h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
                        </div>
                    </figcaption>
                </figure>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>