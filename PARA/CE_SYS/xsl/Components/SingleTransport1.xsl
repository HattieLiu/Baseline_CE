<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
    <xsl:include href="TransportByAir1.xsl"/>
    <xsl:include href="TransportBySea1.xsl"/>
    <xsl:include href="TransportByRoad1.xsl"/>
<!--  *********** point <SingleTransport1> start ********** -->
	<xsl:template name="SingleTransport1">
		<xsl:param name="SingleTransport1"/>
		<xsl:param name="IndvTrnsprt_FullName"/>
		<xsl:param name="stmt2" select="Doc:IndvTrnsprt"/>
		<xsl:variable name="SingleTransport1_name" select="name($SingleTransport1)"/>
		<xsl:variable name="IndvTrnsprt_FullName_fox" select="$IndvTrnsprt_FullName"/>
		<xsl:variable name="IndvTrnsprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$SingleTransport1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<!--<xsl:attribute name="onClick">Swap('<xsl:value-of select="$SingleTransport1_name"/>')</xsl:attribute>-->
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$IndvTrnsprt_FullName"/>_<xsl:value-of select="$SingleTransport1_name"/>')</xsl:attribute>
					<xsl:value-of select="$IndvTrnsprtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<!--<xsl:attribute name="id"><xsl:value-of select="$SingleTransport1_name"/></xsl:attribute>-->
					<xsl:attribute name="id"><xsl:value-of select="$IndvTrnsprt_FullName"/>_<xsl:value-of select="$SingleTransport1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
					   <xsl:for-each select="$SingleTransport1/Doc:TrnsprtByAir">
						<xsl:variable name="TransportByAir1" select="."/>
						<xsl:call-template name="TransportByAir1">
							<xsl:with-param name="TransportByAir1" select="$TransportByAir1"/>
							<xsl:with-param name="TrnsprtByAir_FullName">
								<xsl:value-of select="$IndvTrnsprt_FullName_fox"/>_<xsl:value-of select="$SingleTransport1_name"/>
							</xsl:with-param>
							<xsl:with-param name="TransportByAir1_parent">
							      <xsl:number value="position()"/>_<xsl:value-of select="$stmt2"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$SingleTransport1/Doc:TrnsprtBySea">
						<xsl:variable name="TransportBySea1" select="."/>
						<xsl:call-template name="TransportBySea1">
							<xsl:with-param name="TransportBySea1" select="$TransportBySea1"/>
							<xsl:with-param name="TrnsprtBySea_FullName">
								<xsl:value-of select="$IndvTrnsprt_FullName_fox"/>_<xsl:value-of select="$SingleTransport1_name"/>
							</xsl:with-param>
							<xsl:with-param name="TransportBySea1_parent">
							     <xsl:number value="position()"/>_<xsl:value-of select="$stmt2"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$SingleTransport1/Doc:TrnsprtByRoad">
						<xsl:variable name="TransportByRoad1" select="."/>
						<xsl:call-template name="TransportByRoad1">
							<xsl:with-param name="TransportByRoad1" select="$TransportByRoad1"/>
							<xsl:with-param name="TrnsprtByRoad_FullName">
								<xsl:value-of select="$IndvTrnsprt_FullName_fox"/>_<xsl:value-of select="$SingleTransport1_name"/>
							</xsl:with-param>
							<xsl:with-param name="TransportByRoad1_parent">
						        <xsl:number value="position()"/>_<xsl:value-of select="$stmt2"/>	
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$SingleTransport1/Doc:TrnsprtByRail">
						<xsl:variable name="TransportByRail1" select="."/>
						<xsl:call-template name="TransportByRoad1">
							<xsl:with-param name="TransportByRoad1" select="$TransportByRail1"/>
							<xsl:with-param name="TrnsprtByRoad_FullName">
								<xsl:value-of select="$IndvTrnsprt_FullName_fox"/>_<xsl:value-of select="$SingleTransport1_name"/>
							</xsl:with-param>
						    <xsl:with-param name="TransportByRoad1_parent">
 						        <xsl:number value="position()"/>_<xsl:value-of select="$stmt2"/>  
						    </xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <SingleTransport1> end ********** -->
</xsl:stylesheet>
