<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="SingleTransport1.xsl"/>
   <xsl:include href="MultimodalTransport1.xsl"/>
<!--  *********** point <TransportMeans1Choice> start ********** -->
	<xsl:template name="TransportMeans1Choice">
		<xsl:param name="TransportMeans1Choice"/>
		<xsl:param name="RtgSummry_FullName"/>
		<xsl:variable name="TransportMeans1Choice_name" select="name($TransportMeans1Choice)"/>
		<xsl:variable name="RtgSummry_FullName_fox" select="$RtgSummry_FullName"/>
		<xsl:variable name="RtgSummryDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransportMeans1Choice_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$RtgSummry_FullName_fox"/>_<xsl:value-of select="$TransportMeans1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$RtgSummryDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$RtgSummry_FullName_fox"/>_<xsl:value-of select="$TransportMeans1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="SingleTransport1" select="$TransportMeans1Choice/Doc:IndvTrnsprt"/>
						<xsl:call-template name="SingleTransport1">
							<xsl:with-param name="SingleTransport1" select="$SingleTransport1"/>
							<xsl:with-param name="IndvTrnsprt_FullName">
								<xsl:value-of select="$RtgSummry_FullName_fox"/>_<xsl:value-of select="$TransportMeans1Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="MultimodalTransport1" select="$TransportMeans1Choice/Doc:MltmdlTrnsprt"/>
						<xsl:call-template name="MultimodalTransport1">
							<xsl:with-param name="MultimodalTransport1" select="$MultimodalTransport1"/>
							<xsl:with-param name="MltmdlTrnsprt_FullName">
								<xsl:value-of select="$RtgSummry_FullName_fox"/>_<xsl:value-of select="$TransportMeans1Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportMeans1Choice> end ********** -->
</xsl:stylesheet>
