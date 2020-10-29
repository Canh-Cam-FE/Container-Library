<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-gallery pt">
            <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
                <div class="row">
                    <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template> 
    <xsl:template match="Zone">
        <div class="col-lg-6"> 
            <xsl:apply-templates select="Zone" mode="Zone1a"></xsl:apply-templates>
        </div>
        <div class="col-lg-6">
            <div class="row">
                <xsl:apply-templates select="Zone" mode="Zone1b"></xsl:apply-templates> 
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1a">
        <xsl:if test="position()=1">
            <div class="home-gallery-swiper-wrapper">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
                    </div>
                    <div class="home-gallery-pagination swiper-pagination"></div>
                </div>
            </div>
        
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News1">
        <div class="swiper-slide">
            <div class="wrapper">
                <div class="lightgallery">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
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
                <div class="caption ">
                    <em class="mdi mdi-image"></em>     
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
            </div>
        </div>
        
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1b">
        <xsl:if test="position()=2">
            
            <xsl:apply-templates select="News" mode="News1b"></xsl:apply-templates>
                
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News1b">
        <div class="col-6">
            <div class="home-gallery-video">
                <div class="lightgallery">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="SubTitle"></xsl:value-of>
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
                <div class="caption"><em class="mdi mdi-play-circle"></em>
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>