<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tvc-about-4 pt" data-scroll="1">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
        </section>
        <section class="tvc-about-1 pt" data-scroll="2">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone2"></xsl:apply-templates>
        </section>
        <section class="tvc-about-2 pt" data-scroll="3">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone3"></xsl:apply-templates>
        </section>
        <section class="tvc-project-list-1 pt" data-scroll="4">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone4"></xsl:apply-templates>
        </section>
        <section class="tvc-about-3 pt" data-scroll="5">
            <xsl:apply-templates select="/ZoneList/Zone" mode="Zone5"></xsl:apply-templates>
        </section>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1">
        <xsl:if test="position()=1">
            <div class="container">
                <div class="home-project-bg-wrapper">
                    <div class="article-title-red-line-m0">
                        <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                    </div>
                    <xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
                    
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News1">
        <div class="row bg-grey">
            <div class="col-lg-8">
                <h2><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></h2>
            </div>
            <div class="col-lg-4">
                <div class="home-project-text-wrapper">
                    <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
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
    <xsl:template match="Zone" mode="Zone3">
        <xsl:if test="position()= 3">
            <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of> </p>
                </div>
                <div class="row">
                    <xsl:apply-templates select="News" mode="News3"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News3">
        <div class="col-sm-6 col-md-4">
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
                    <h2 class="text-center">
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
    <xsl:template match="Zone" mode="Zone4">
        <xsl:if test="position()=4">
            <div class="container">
                <div class="row">
                    <xsl:apply-templates select="News" mode="News4"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News4">
        <div class="col-md-6">
            <div class="home-project-bg-wrapper">
                <div class="article-title-red-line-m0">
                    <h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
                </div>
                <div class="bg-grey">
                   <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone5">
        <xsl:if test="position()=5">
             <div class="container">
                <div class="article-title-red-line">
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
                <xsl:apply-templates select="News" mode="News5"></xsl:apply-templates>
                
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News5">
        <div class="main-image">
            <div class="image lightgallery">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </a>
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
    </xsl:template>
</xsl:stylesheet>