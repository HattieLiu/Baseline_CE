<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="Quantity4.xsl"/>
	<xsl:include href="PercentageTolerance1.xsl"/>
	<xsl:include href="UnitPrice9.xsl"/>
	<xsl:include href="ProductIdentifier2Choice.xsl"/>
	<xsl:include href="ProductCharacteristics1Choice.xsl"/>
	<xsl:include href="ProductCategory1Choice.xsl"/>
	<xsl:include href="ShipmentSchedule1Choice.xsl"/>
	<!--  *********** point <LineItemDetails7> Start ********** -->
	<xsl:template name="LineItemDetails7">
		<xsl:param name="LineItemDetails7"/>
		<xsl:param name="LineItemDetails7_parent"/>
		<xsl:variable name="LineItemDetails7_name" select="name($LineItemDetails7)"/>
		<xsl:variable name="LineItemDetails7_pname" select="$LineItemDetails7_parent"/>
		<xsl:variable name="LineItmDtlsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$LineItemDetails7_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LineItmIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'LineItmId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PdctNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PdctNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PdctOrgnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PdctOrgn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TtlAmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>')</xsl:attribute>
					<xsl:value-of select="$LineItmDtlsDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
									<tr>
										<xsl:element name="TD">
											<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:value-of select="$LineItmIdDesc"/>
											<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>_LineItmId</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>_LineItmId</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails7/LineItmId"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:value-of select="$PdctNmDesc"/>
											<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails7/PdctNm"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
									</tr>
									<tr>
										<xsl:element name="TD">
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:value-of select="$TtlAmtDesc"/>
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>_TtlAmt_CCY</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>_TtlAmt_CCY</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">10</xsl:attribute>
												<xsl:attribute name="maxlength">10</xsl:attribute>
												<xsl:attribute name="size">3</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails7/TtlAmt/@Ccy"/></xsl:attribute>
											</xsl:element>
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>_TtlAmt</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>_TtlAmt</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails7/TtlAmt"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
									</tr>
									<xsl:for-each select="$LineItemDetails7/PdctOrgn">
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:attribute name="nowrap">true</xsl:attribute>
												<xsl:value-of select="$PdctOrgnDesc"/>
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>_PdctNm</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>_PdctNm</xsl:attribute>
													<xsl:attribute name="class">CHAR_P</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
									</xsl:for-each>
								</table>
							</xsl:element>
						</tr>
						<xsl:variable name="Quantity4" select="$LineItemDetails7/Qty"/>
						<xsl:call-template name="Quantity4">
							<xsl:with-param name="Quantity4" select="$Quantity4"/>
							<xsl:with-param name="Quantity4_parent">
								<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PercentageTolerance1" select="$LineItemDetails7/QtyTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1"/>
							<xsl:with-param name="PercentageTolerance1_parent">
								<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="UnitPrice9_one" select="$LineItemDetails7/UnitPric"/>
						<xsl:call-template name="UnitPrice9">
							<xsl:with-param name="UnitPrice9" select="$UnitPrice9_one"/>
							<xsl:with-param name="UnitPrice9_parent">
								<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PercentageTolerance1_double" select="$LineItemDetails7/PricTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1_double"/>
							<xsl:with-param name="PercentageTolerance1_parent">
								<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItemDetails7/PdctIdr">
							<xsl:variable name="ProductIdentifier2Choice" select="."/>
							<xsl:call-template name="ProductIdentifier2Choice">
								<xsl:with-param name="ProductIdentifier2Choice" select="$ProductIdentifier2Choice"/>
								<xsl:with-param name="ProductIdentifier2Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails7/PdctChrtcs">
							<xsl:variable name="ProductCharacteristics1Choice" select="."/>
							<xsl:call-template name="ProductCharacteristics1Choice">
								<xsl:with-param name="ProductCharacteristics1Choice" select="$ProductCharacteristics1Choice"/>
								<xsl:with-param name="ProductCharacteristics1Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails7/PdctCtgy">
							<xsl:variable name="ProductCategory1Choice" select="."/>
							<xsl:call-template name="ProductCategory1Choice">
								<xsl:with-param name="ProductCategory1Choice" select="$ProductCategory1Choice"/>
								<xsl:with-param name="ProductCategory1Choice_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="ShipmentSchedule1Choice" select="$LineItemDetails7/ShipmntSchdl"/>
						<xsl:call-template name="ShipmentSchedule1Choice">
							<xsl:with-param name="ShipmentSchedule1Choice" select="$ShipmentSchedule1Choice"/>
							<xsl:with-param name="ShipmentSchedule1Choice_parent">
								<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="TransportMeans1" select="$LineItemDetails7/RtgSummry"/>
						<xsl:call-template name="TransportMeans1">
							<xsl:with-param name="TransportMeans1" select="$TransportMeans1"/>
							<xsl:with-param name="TransportMeans1_parent">
								<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItemDetails7/Incotrms">
							<xsl:variable name="Incoterms1" select="."/>
							<xsl:call-template name="Incoterms1">
								<xsl:with-param name="Incoterms1" select="$Incoterms1"/>
								<xsl:with-param name="Incoterms1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails7/Adjstmnt">
							<xsl:variable name="Adjustment3" select="."/>
							<xsl:call-template name="Adjustment3">
								<xsl:with-param name="Adjustment3" select="$Adjustment3"/>
								<xsl:with-param name="Adjustment3_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="Charge12" select="$LineItemDetails7/FrghtChrgs"/>
						<xsl:call-template name="Charge12">
							<xsl:with-param name="Charge12" select="$Charge12"/>
							<xsl:with-param name="Charge12_parent">
								<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItemDetails7/Tax">
							<xsl:variable name="Tax13" select="."/>
							<xsl:call-template name="Tax13">
								<xsl:with-param name="Tax13" select="$Tax13"/>
								<xsl:with-param name="Tax13_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$LineItemDetails7_pname"/>_<xsl:value-of select="$LineItemDetails7_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItemDetails7> end ********** -->
</xsl:stylesheet>
