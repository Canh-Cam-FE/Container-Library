<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tvc-nav gallery-tab">
            <div class="container">
                <div class="main-content">
                    <div class="content-item active">
                        <div class="article-title-red-line">
                            <h2><xsl:value-of select="/NewsList/ZoneTitle" disable-output-escaping="yes"></xsl:value-of></h2>
                        </div>
                        <div class="row main-videos">
                            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-md-6 col-lg-4">
            <div class="item">
                <div class="lightgallery">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="SubTitle"></xsl:value-of>
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
                            <figcaption><em class="mdi mdi-play-circle"></em>
                                <div class="title">
                                    <h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
                                </div>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>