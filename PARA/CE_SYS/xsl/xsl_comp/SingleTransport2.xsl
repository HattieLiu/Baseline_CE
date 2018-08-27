<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
  <xsl:include href="TransportBySea2.xsl"/>
  <xsl:include href="TransportByRoad2.xsl"/>
  <xsl:include href="TransportByRail2.xsl"/>
  
<!--  *********** point <SingleTransport2> Start ********** -->
	<xsl:template name="SingleTransport2">
		<xsl:param name="SingleTransport2"/>
		<xsl:variable name="SingleTransport2_name" select="name($SingleTransport2)"/>
		
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$SingleTransport2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">radio</xsl:attribute>
					<xsl:attribute name="id"><xsl:value-of select="substring($SingleTransport2_name,5)"/>_check</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="substring($SingleTransport2_name,5)"/>_check</xsl:attribute>
					<xsl:for-each select="$SingleTransport2/Doc:TrnsprtByAir">
						<xsl:if test="Doc:AirCrrierNm != '' ">
							<xsl:attribute name="checked">true</xsl:attribute>
						</xsl:if>
					</xsl:for-each>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:for-each select="$SingleTransport2/Doc:TrnsprtByAir">
						<xsl:if test="Doc:AirCrrierNm != '' ">
							<xsl:attribute name="onClick">Swap('<xsl:value-of select="$SingleTransport2_name"/>')</xsl:attribute>
						</xsl:if>
					</xsl:for-each>
					<xsl:value-of select="$fldDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$SingleTransport2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$SingleTransport2/Doc:PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<!--<xsl:with-param name="Docu7_FullName">
								<xsl:value-of select="substring($SingleTransport2_name,5)"/>
							</xsl:with-param>-->
						</xsl:call-template>
						<xsl:variable name="TransportBySea2" select="$SingleTransport2/Doc:TrnsprtBySea"/>
						<xsl:call-template name="TransportBySea2">
							<xsl:with-param name="TransportBySea2" select="$TransportBySea2"/>
						</xsl:call-template>
						<xsl:variable name="TransportByRoad2" select="$SingleTransport2/Doc:TrnsprtByRoad"/>
						<xsl:call-template name="TransportByRoad2">
							<xsl:with-param name="TransportByRoad2" select="$TransportByRoad2"/>
						</xsl:call-template>
						<xsl:variable name="TransportByRail2" select="$SingleTransport2/Doc:TrnsprtByRail"/>
						<xsl:call-template name="TransportByRail2">
							<xsl:with-param name="TransportByRail2" select="$TransportByRail2"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <SingleTransport2> end ********** -->
</xsl:stylesheet>
