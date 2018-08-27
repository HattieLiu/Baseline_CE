<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="ShipmentDateRange2.xsl"/>
	<!--  *********** point <ShipmentSchedule1Choice> Start ********** -->
	<xsl:template name="ShipmentSchedule1Choice">
		<xsl:param name="ShipmentSchedule1Choice"/>
		<xsl:param name="ShipmentSchedule1Choice_parent"/>
		<xsl:variable name="ShipmentSchedule1Choice_name" select="name($ShipmentSchedule1Choice)"/>
		<xsl:variable name="ShipmentSchedule1Choice_pname" select="$ShipmentSchedule1Choice_parent"/>
		<xsl:variable name="ShipmntSchdlDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ShipmentSchedule1Choice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ShipmentSchedule1Choice_pname"/>_<xsl:value-of select="$ShipmentSchedule1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$ShipmntSchdlDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ShipmentSchedule1Choice_pname"/>_<xsl:value-of select="$ShipmentSchedule1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="ShipmentDateRange1" select="$ShipmentSchedule1Choice/ShipmntDtRg"/>
						<xsl:call-template name="ShipmentDateRange1">
							<xsl:with-param name="ShipmentDateRange1" select="$ShipmentDateRange1"/>
							<xsl:with-param name="ShipmentDateRange1_parent">
								<xsl:value-of select="$ShipmentSchedule1Choice_pname"/>_<xsl:value-of select="$ShipmentSchedule1Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$ShipmentSchedule1Choice/ShipmntSubSchdl">
							<xsl:variable name="ShipmentDateRange2" select="."/>
							<xsl:call-template name="ShipmentDateRange2">
								<xsl:with-param name="ShipmentDateRange2" select="$ShipmentDateRange2"/>
								<xsl:with-param name="ShipmentDateRange2_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ShipmentSchedule1Choice_pname"/>_<xsl:value-of select="$ShipmentSchedule1Choice_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ShipmentSchedule1Choice> end ********** -->
</xsl:stylesheet>
