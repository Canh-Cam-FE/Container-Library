<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tvc-sponsors-1 pd" style="padding-bottom: 0px">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
            
        </section>
        <section class="tvc-sponsors pd">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone2"></xsl:apply-templates>
        </section>
        <section class="tvc-sponsors pbt">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone3"></xsl:apply-templates>
        </section>
        <section class="tvc-news-2 pt" style="padding-bottom: 55px">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone4"></xsl:apply-templates>
        </section>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1">
        <xsl:if test="position()=1">
            <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
                <xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
                
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News1">
        <div class="main-content">
            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone2">
        <xsl:if test="position()=2">
            <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
                <div class="main-sponsors">
                    <xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News2">
        <div class="item">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
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
                 <div class="title">
                    <h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
                </div>
            </a>
        </div>
       
    </xsl:template>
    <xsl:template match="Zone" mode="Zone3">
        <xsl:if test="position()=3">
            <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
                <div class="row" style="margin-top: 40px">
                    <xsl:apply-templates select="Zone" mode="Zone3a"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone3a">
        <div class="col-lg-2">
            <div class="nha-dong-hanh">
                <h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
            </div>
        </div>
        <div class="col-lg-10">
            <div class="main-sponsors">
                <xsl:apply-templates select="News" mode="News3"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="News3">
        <div class="item">
            <a href="javacript:void(0)">
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
                <div class="title">
                    <h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
                </div>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone4">
        <xsl:if test="position()=4">
            <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
                <div class="row">
                    <xsl:apply-templates select="News" mode="News4"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News4">
        <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="figure-news">
                <div class="figure-image">
                    <div class="wrapper">
                        <a href="#">
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
    </xsl:template>
</xsl:stylesheet>