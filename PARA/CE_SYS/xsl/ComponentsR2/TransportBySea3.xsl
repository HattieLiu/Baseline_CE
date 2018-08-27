<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <TransportBySea3> start ********** -->
	<xsl:template name="TransportBySea3">
		<xsl:param name="TransportBySea3"/>
		<xsl:param name="TransportBySea3_parent"/>
		<xsl:variable name="TransportBySea3_name" select="name($TransportBySea3)"/>
		<xsl:variable name="TransportBySea3_pname" select="$TransportBySea3_parent"/>
		<xsl:variable name="TrnsprtBySeaDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$TransportBySea3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PortOfLoadngDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PortOfLoadng'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PortOfDschrgeDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PortOfDschrge'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="SeaCrrierNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'SeaCrrierNm'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportBySea3_pname"/>_<xsl:value-of select="$TransportBySea3_name"/>')</xsl:attribute>
					<xsl:value-of select="$TrnsprtBySeaDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportBySea3_pname"/>_<xsl:value-of select="$TransportBySea3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:for-each select="$TransportBySea3/PortOfLoadng">
								<xsl:element name="TD">
									<tr>
										<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
										<xsl:attribute name="height">25</xsl:attribute>
										<xsl:value-of select="$PortOfLoadngDesc"/>
										<xsl:element name="INPUT">
											<xsl:attribute name="type">text</xsl:attribute>
											<xsl:attribute name="name"><xsl:value-of select="$TransportBySea3_pname"/>_<xsl:value-of select="$TransportBySea3_name"/>_PortOfLoadng</xsl:attribute>
											<xsl:attribute name="id"><xsl:value-of select="$TransportBySea3_pname"/>_<xsl:value-of select="$TransportBySea3_name"/>_PortOfLoadng</xsl:attribute>
											<xsl:attribute name="class">CHAR_P</xsl:attribute>
											<xsl:attribute name="length">35</xsl:attribute>
											<xsl:attribute name="maxlength">35</xsl:attribute>
											<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										</xsl:element>
									</tr>
								</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$TransportBySea3/PortOfDschrge">
								<xsl:element name="TD">
									<tr>
										<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
										<xsl:attribute name="height">25</xsl:attribute>
										<xsl:value-of select="$PortOfDschrgeDesc"/>
										<xsl:element name="INPUT">
											<xsl:attribute name="type">text</xsl:attribute>
											<xsl:attribute name="name"><xsl:value-of select="$TransportBySea3_pname"/>_<xsl:value-of select="$TransportBySea3_name"/>_PortOfDschrge</xsl:attribute>
											<xsl:attribute name="id"><xsl:value-of select="$TransportBySea3_pname"/>_<xsl:value-of select="$TransportBySea3_name"/>_PortOfDschrge</xsl:attribute>
											<xsl:attribute name="class">CHAR_P</xsl:attribute>
											<xsl:attribute name="length">35</xsl:attribute>
											<xsl:attribute name="maxlength">35</xsl:attribute>
											<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										</xsl:element>
									</tr>
								</xsl:element>
							</xsl:for-each>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$SeaCrrierNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportBySea3_pname"/>_<xsl:value-of select="$TransportBySea3_name"/>_SeaCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportBySea3_pname"/>_<xsl:value-of select="$TransportBySea3_name"/>_SeaCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportBySea3/SeaCrrierNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportBySea3> end ********** -->
</xsl:stylesheet>
