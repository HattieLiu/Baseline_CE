<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
<!--  *********** point <Adjustment3> Start ********** -->
	<xsl:template name="Adjustment3">
		<xsl:param name="Adjust1_FullName"/>
		<xsl:param name="Adjustment3"/>
		<xsl:variable name="Adjust1_FullName_fox" select="$Adjust1_FullName"/>
		<xsl:variable name="Adjustment3_name" select="name($Adjustment3)"/>
		<xsl:variable name="AdjstmntDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Adjustment3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrAdjstmntTpDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:OthrAdjstmntTp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DrctnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Drctn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Tp'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="AmtDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Amt'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="RateDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Rate'"/>
		</xsl:call-template>
	</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$Adjust1_FullName_fox"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>				
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Adjust1_FullName_fox"/>')</xsl:attribute>
					<xsl:value-of select="$AdjstmntDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<!--<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>-->
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Adjust1_FullName_fox"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjust1_FullName_fox"/>_<xsl:value-of select="$Adjustment3_name"/>one_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$Adjust1_FullName_fox"/>_Doc:OthrAdjstmntTp</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<xsl:if test="$Adjustment3/Doc:Tp != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment3_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="name">Doc:Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment3/Doc:Tp"/></xsl:attribute>
									<xsl:attribute name="ch"><xsl:value-of select="$Adjust1_FullName_fox"/>_Doc:Tp</xsl:attribute>
									<xsl:attribute name="tsu">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjust1_FullName_fox"/>_<xsl:value-of select="$Adjustment3_name"/>one_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$Adjust1_FullName_fox"/>_Doc:Tp</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<xsl:if test="$Adjustment3/Doc:OthrAdjstmntTp != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							     <xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							     <xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$OthrAdjstmntTpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment3_name"/>_OthrAdjstmntTp</xsl:attribute>
									<xsl:attribute name="name">Doc:OthrAdjstmntTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment3/Doc:OthrAdjstmntTp"/></xsl:attribute>
									<xsl:attribute name="ch"><xsl:value-of select="$Adjust1_FullName_fox"/>_Doc:OthrAdjstmntTp</xsl:attribute>
									<xsl:attribute name="tsu">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjust1_FullName_fox"/>_<xsl:value-of select="$Adjustment3_name"/>two_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$Adjust1_FullName_fox"/>_Doc:Rate</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<xsl:if test="$Adjustment3/Doc:Amt != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							    <xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$AmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment3_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="name">Doc:Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment3/Doc:Amt"/></xsl:attribute>
									<xsl:attribute name="ch"><xsl:value-of select="$Adjust1_FullName_fox"/>_Doc:Amt</xsl:attribute>
									<xsl:attribute name="tsu">N</xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment3_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">8</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment3/Doc:Amt/@Ccy"/></xsl:attribute>
									<xsl:attribute name="ch"><xsl:value-of select="$Adjust1_FullName_fox"/>_Doc:Amt</xsl:attribute>
									<xsl:attribute name="tsu">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjust1_FullName_fox"/>_<xsl:value-of select="$Adjustment3_name"/>two_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$Adjust1_FullName_fox"/>_Doc:Amt</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<xsl:if test="$Adjustment3/Doc:Rate != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RateDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment3_name"/>_Rate</xsl:attribute>
									<xsl:attribute name="name">Doc:Rate</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment3/Doc:Rate"/></xsl:attribute>
									<xsl:attribute name="ch"><xsl:value-of select="$Adjust1_FullName_fox"/>_Doc:Rate</xsl:attribute>
									<xsl:attribute name="tsu">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$DrctnDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Drctn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment3_name"/>_Drctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment3/Doc:Drctn"/></xsl:attribute>
									<xsl:attribute name="tsu">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							</xsl:element>
							<xsl:element name="TD">
							</xsl:element>
							<xsl:element name="TD">
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Adjustment3> end ********** -->
</xsl:stylesheet>
