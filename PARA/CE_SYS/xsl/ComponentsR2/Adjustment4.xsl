<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <Adjustment4> Start ********** -->
	<xsl:template name="Adjustment4">
		<xsl:param name="Adjustment4"/>
		<xsl:param name="Adjustment4_parent"/>
		<xsl:variable name="Adjustment4_name" select="name($Adjustment4)"/>
		<xsl:variable name="Adjustment4_pname" select="$Adjustment4_parent"/>
		<xsl:variable name="AdjstmntDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$Adjustment4_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrAdjstmntTpDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OthrAdjstmntTp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DrctnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Drctn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Tp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Amt'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/>')</xsl:attribute>
					<xsl:value-of select="$AdjstmntDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment4_pname"/>_xsl:value-of select="$Adjustment4_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment4/Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$OthrAdjstmntTpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/>_OthrAdjstmntTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/>_OthrAdjstmntTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment4/OthrAdjstmntTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$DrctnDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/>_Drctn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/>_Drctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment4/Drctn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$AmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment4/Amt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment4_pname"/>_<xsl:value-of select="$Adjustment4_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment4/Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Adjustment4> end ********** -->
</xsl:stylesheet>
