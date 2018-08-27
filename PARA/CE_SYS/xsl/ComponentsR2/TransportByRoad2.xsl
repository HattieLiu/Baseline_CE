<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <TransportByRoad2> start ********** -->
	<xsl:template name="TransportByRoad2">
		<xsl:param name="TransportByRoad2"/>
		<xsl:param name="TransportByRoad2_parent"/>
		<xsl:variable name="TransportByRoad2_name" select="name($TransportByRoad2)"/>
		<xsl:variable name="TransportByRoad2_pname" select="$TransportByRoad2_parent"/>
		<xsl:variable name="TrnsprtByRoadDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$TransportByRoad2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlcOfRctDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PlcOfRct'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlcOfDlvryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PlcOfDlvry'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RoadCrrierNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'RoadCrrierNm'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportByRoad2_pname"/>_<xsl:value-of select="$TransportByRoad2_name"/>')</xsl:attribute>
					<xsl:value-of select="$TrnsprtByRoadDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad2_pname"/>_<xsl:value-of select="$TransportByRoad2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PlcOfRctDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRoad2_pname"/>_<xsl:value-of select="$TransportByRoad2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad2_pname"/>_<xsl:value-of select="$TransportByRoad2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByRoad2/PlcOfRct"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PlcOfDlvryDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRoad2_pname"/>_<xsl:value-of select="$TransportByRoad2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad2_pname"/>_<xsl:value-of select="$TransportByRoad2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByRoad2/PlcOfDlvry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$RoadCrrierNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRoad2_pname"/>_<xsl:value-of select="$TransportByRoad2_name"/>_RoadCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad2_pname"/>_<xsl:value-of select="$TransportByRoad2_name"/>_RoadCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByRoad2/RoadCrrierNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportByRoad2> end ********** -->
</xsl:stylesheet>
