<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tvc-project-detail pt">
            <div class="container">
                <div class="main-title">
                    <h1><xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of></h1>
                </div>
                <div class="main-slide">
                    <div class="swiper-container gallery-top">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/NewsDetail/NewsImages" mode="NewsImages1"></xsl:apply-templates>
                        </div>
                        <div class="swiper-button-next swiper-button-white"></div>
                        <div class="swiper-button-prev swiper-button-white"></div>
                    </div>
                    <div class="swiper-container gallery-thumbs">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/NewsDetail/NewsImages" mode="NewsImages2"></xsl:apply-templates>
                        </div> 
                    </div>
                </div>
                <div class="main-content">
                    <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="full-content">
                    <div class="button-register">
                        <div class="dang-ky-tham-du">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text disable-output-escaping="yes">Đăng ký tham dự</xsl:text>
                            </a>
                        </div>
                        <div class="dang-ky-ung-ho"><a href="https://docs.google.com/forms/d/e/1FAIpQLScBYkyogiYaTZHCTTIEBg1_KOMCLj6mpGQAIK-0Yz8yxTrZFQ/viewform?usp=pp_url&amp;entry.2005620554=VDM&amp;entry.1045781291=vdm@gmail.com&amp;entry.1065046570=123&amp;entry.1166974658=123&amp;entry.839337160=123" target="_blank">Đăng ký ủng hộ</a></div>
                    </div>
                </div>
                <div class="main-project-other">
                    <div class="title-other">
                        <h2>Nhà tài trợ</h2>
                    </div>
                    <div class="main-item">
                        <xsl:apply-templates select="/NewsDetail/NewsRelated"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsImages" mode="NewsImages1">
        <div class="swiper-slide">
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
        </div>
    </xsl:template>
    <xsl:template match="NewsImages" mode="NewsImages2">
        
        <div class="swiper-slide">
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
                        <div class="title">
                            <h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
                        </div>
                    </figcaption>
                </figure>
            </a>
            
        </div>
    </xsl:template>   
</xsl:stylesheet>