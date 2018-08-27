<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<!--  ************************************************lastest***************************************************  -->
	<!--  *********** point <DocumentIdentification7> Start ********** -->
	<xsl:template name="DocumentIdentification7">
		<xsl:param name="DocumentIdentification7"/>
		<xsl:variable name="DocumentIdentification7_name" select="name($DocumentIdentification7)"/>

		<xsl:variable name="PurchsOrdrRefDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$DocumentIdentification7_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DtOfIsseDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:DtOfIsse'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DocumentIdentification7_name"/>')</xsl:attribute>
					<xsl:value-of select="$PurchsOrdrRefDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification7_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>ID:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification7_name"/>_Id</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification7_name"/>_Id</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification7/Doc:Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$DtOfIsseDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification7_name"/>_DtOfIsse</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification7_name"/>_DtOfIsse</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification7/Doc:DtOfIsse"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DocumentIdentification7> end ********** -->
	
	<!--  *********** point <DocumentIdentification4> Start ********** -->
	<xsl:template name="DocumentIdentification4">
		<xsl:param name="DocumentIdentification4"/>
		<xsl:variable name="DocumentIdentification4_name" select="name($DocumentIdentification4)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DocumentIdentification4_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($DocumentIdentification4_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>ID:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification4_name"/>_ID</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification4_name"/>_ID</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification4/Doc:Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:text>Vrsn:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification4_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification4_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification4/Doc:Vrsn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="BICIdentification1" select="$DocumentIdentification4/Doc:Submitr"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>DocIndx:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification4_name"/>_DocIndx</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification4_name"/>_DocIndx</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification4/Doc:DocIndx"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DocumentIdentification7> end ********** -->
	
	<!--  *********** point <PostalAddress2> Start ********** -->
	<xsl:template name="PostalAddress2">
		<xsl:param name="PostalAddress2"/>
		<xsl:param name="Post_FullName"/>
		<xsl:variable name="PostalAddress2_name" select="name($PostalAddress2)"/>
		<xsl:variable name="Post_FullName_fox" select="$Post_FullName"/>

		<xsl:variable name="PstlAdrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PostalAddress2_name"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">2</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Post_FullName_fox"/>_<xsl:value-of select="$PostalAddress2_name"/>')</xsl:attribute>
					<xsl:value-of select="$PstlAdrDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">2</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Post_FullName_fox"/>_<xsl:value-of select="$PostalAddress2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="80%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$StrtNmDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%; FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress2_name"/>_StrtNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress2_name"/>_StrtNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress2/Doc:StrtNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PstCdIdDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress2_name"/>_PstCdId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress2_name"/>_PstCdId</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress2/Doc:PstCdId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TwnNmDesc"/>
								</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress2_name"/>_TwnNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress2_name"/>_TwnNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress2/Doc:TwnNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$CtrySubDvsnDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress2_name"/>_Ctry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress2_name"/>_Ctry</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress2/Doc:Ctry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$CtryDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress2_name"/>_CtrySubDvsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress2_name"/>_CtrySubDvsn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress2/Doc:CtrySubDvsn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <PostalAddress2> end ********** -->
	

	
	<!--  *********** point <DocumentIdentification6> start ********** -->
	<xsl:template name="DocumentIdentification6">
		<xsl:param name="DocumentIdentification6"/>
		<xsl:variable name="DocumentIdentification6_name" select="name($DocumentIdentification6)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DocumentIdentification6_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($DocumentIdentification6_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification6_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>Id:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification6_name"/>_ID</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification6_name"/>_ID</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification6/Doc:Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>Vrsn:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification6_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification6_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification6/Doc:Vrsn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>AmdmntSeqNb:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification6_name"/>_AmdmntSeqNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification6_name"/>_AmdmntSeqNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification6/Doc:AmdmntSeqNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DocumentIdentification6> end ********** -->
	

	
	<!--  *********** point <InstructionType1> start ********** -->
	<xsl:template name="InstructionType1">
		<xsl:param name="InstructionType1"/>
		<xsl:variable name="InstructionType1_name" select="name($InstructionType1)"/>
		<!-- Winston Law * For get the Field Description * 060614 begin-->
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$InstructionType1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="typeDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Tp'"/>
			</xsl:call-template>
		</xsl:variable>
		<!-- Winston Law * For get the Field Description * 060614 end-->
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$InstructionType1_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$InstructionType1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$typeDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InstructionType1_name"/>_ID</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InstructionType1_name"/>_ID</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InstructionType1/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <InstructionType1> end ********** -->

	<!--  *********** point <DataSetSubmissionReferences1> Start ********** -->
	<xsl:template name="DataSetSubmissionReferences1">
		<xsl:param name="DataSetSubmissionReferences1"/>
		<xsl:variable name="DataSetSubmissionReferences1_name" select="name($DataSetSubmissionReferences1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DataSetSubmissionReferences1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($DataSetSubmissionReferences1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>TxId:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences1/Doc:TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>FnlSubmissn:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences1_name"/>_FnlSubmissn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences1_name"/>_FnlSubmissn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences1/Doc:FnlSubmissn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification5" select="$DataSetSubmissionReferences1/Doc:SubmitrTxRef"/>
						<xsl:call-template name="DocumentIdentification5">
							<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DataSetSubmissionReferences1> end ********** -->
	<!--  *********** point <InstructionType3>  start ********** -->
	<xsl:template name="InstructionType3">
		<xsl:param name="InstructionType3"/>
		<xsl:variable name="InstructionType3_name" select="name($InstructionType3)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$InstructionType3_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($InstructionType3_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$InstructionType3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>Tp:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InstructionType3_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InstructionType3_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InstructionType3/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <InstructionType3> end ********** -->

	<!--  *********** point <DocumentIdentification1> Start ********** -->
	<xsl:template name="DocumentIdentification1">
		<xsl:param name="DocumentIdentification1"/>
		<xsl:param name="Docu_FullName"/>
		<xsl:variable name="Docu_FullName_fox" select="$Docu_FullName"/>
		<xsl:variable name="DocumentIdentification1_name" select="name($DocumentIdentification1)"/>
		<xsl:variable name="submitBaseInIdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$DocumentIdentification1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="vrsnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Vrsn'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Docu_FullName_fox"/>_<xsl:value-of select="$DocumentIdentification1_name"/>')</xsl:attribute>
					<xsl:value-of select="$submitBaseInIdDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>

				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Docu_FullName_fox"/>_<xsl:value-of select="$DocumentIdentification1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:100%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>ID:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification1_name"/>_Id</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification1_name"/>_Id</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification1/Doc:Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$vrsnDesc"/>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification1_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification1_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification1/Doc:Vrsn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="BICIdentification1" select="$DocumentIdentification1/Doc:Submitr"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BIC_FullName">
								<xsl:value-of select="$Docu_FullName_fox"/>_<xsl:value-of select="$DocumentIdentification1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DocumentIdentification1> end ********** -->
	<!--  *********** point <CommercialDataSet1> Start ********** -->
	<xsl:template name="CommercialDataSet1">
		<xsl:param name="CommercialDataSet1"/>
		<xsl:variable name="CommercialDataSet1_name" select="name($CommercialDataSet1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$CommercialDataSet1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($CommercialDataSet1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$CommercialDataSet1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification1" select="$CommercialDataSet1/Doc:DataSetId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="Docu_FullName">
								<xsl:value-of select="substring($CommercialDataSet1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="DocumentIdentification7" select="$CommercialDataSet1/Doc:ComrclDocRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification4" select="$CommercialDataSet1/Doc:Buyr"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($CommercialDataSet1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification4_double" select="$CommercialDataSet1/Doc:Sellr"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4_double"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($CommercialDataSet1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification4_three" select="$CommercialDataSet1/Doc:BllTo"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4_three"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($CommercialDataSet1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="LineItem2" select="$CommercialDataSet1/Doc:Goods"/>
						<xsl:call-template name="LineItem2">
							<xsl:with-param name="LineItem2" select="$LineItem2"/>
							<xsl:with-param name="Line_FullName">
								<xsl:value-of select="substring($CommercialDataSet1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PaymentTerms1" select="$CommercialDataSet1/Doc:PmtTerms"/>
						<xsl:call-template name="PaymentTerms1">
							<xsl:with-param name="PaymentTerms1" select="$PaymentTerms1"/>
						</xsl:call-template>
						<xsl:variable name="SettlementTerms1" select="$CommercialDataSet1/Doc:SttlmTerms"/>
						<xsl:call-template name="SettlementTerms1">
							<xsl:with-param name="SettlementTerms1" select="$SettlementTerms1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <CommercialDataSet1> end ********** -->
	<!--  *********** point <PartyIdentification4> Start ********** -->
	<xsl:template name="PartyIdentification4">
		<xsl:param name="PartyIdentification4"/>
		<xsl:param name="Part_FullName"/>
		<xsl:variable name="Part_FullName_fox" select="$Part_FullName"/>
		<xsl:variable name="PartyIdentification4_name" select="name($PartyIdentification4)"/>

		<xsl:variable name="buyrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PartyIdentification4_name"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Part_FullName_fox"/>_<xsl:value-of select="$PartyIdentification4_name"/>')</xsl:attribute>
					<xsl:value-of select="$buyrDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Part_FullName_fox"/>_<xsl:value-of select="$PartyIdentification4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PartyIdentification4_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PartyIdentification4_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:for-each select="$PartyIdentification4">
										<xsl:if test="Doc:Nm != '' ">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:value-of select="$NmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification4_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification4_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification4/Doc:Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PartyIdentification4_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PartyIdentification4_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:for-each select="$PartyIdentification4">
										<xsl:if test="Doc:BEI != '' ">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>BEI:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification4_name"/>_BEI</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification4_name"/>_BEI</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification4/Doc:BEI"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						
						<xsl:variable name="PostalAddress2" select="$PartyIdentification4/Doc:PstlAdr"/>
						<xsl:call-template name="PostalAddress2">
							<xsl:with-param name="PostalAddress2" select="$PostalAddress2"/>
							<xsl:with-param name="Post_FullName">
								<xsl:value-of select="$Part_FullName_fox"/>_<xsl:value-of select="$PartyIdentification4_name"/>
							</xsl:with-param>
						</xsl:call-template>				

					</table>
				</xsl:element>
			</xsl:element>
		</tr><!--
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="height">3</xsl:attribute>
			</xsl:element>
		</tr>-->
	</xsl:template>
	<!--  *********** point <PartyIdentification4> end ********** -->
	
	<!--  *********** point <LineItem3> Start ********** -->
	<xsl:template name="LineItem3">
		<xsl:param name="LineItem3"/>
		<xsl:variable name="LineItem3_name" select="name($LineItem3)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItem3_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($LineItem3_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$LineItem3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="LineItemDetails3" select="$LineItem3/Doc:LineItmDtls"/>
						<xsl:call-template name="LineItemDetails3">
							<xsl:with-param name="LineItemDetails3" select="$LineItemDetails3"/>
							<xsl:with-param name="Line3_FullName">
								<xsl:value-of select="substring($LineItem3_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>OrdrdLineItmsTtlAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem3_name"/>_OrdrdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem3_name"/>_OrdrdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem3/Doc:OrdrdLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>AccptdLineItmsTtlAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem3_name"/>_AccptdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem3_name"/>_AccptdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem3/Doc:AccptdLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>OutsdngLineItmsTtlAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem3_name"/>_OutsdngLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem3_name"/>_OutsdngLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem3/Doc:OutsdngLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PdgLineItmsTtlAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem3_name"/>_PdgLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem3_name"/>_PdgLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem3/Doc:PdgLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>OrdrdTtlNetAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem3_name"/>_OrdrdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem3_name"/>_OrdrdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem3/Doc:OrdrdTtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>AccptdTtlNetAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem3_name"/>_AccptdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem3_name"/>_AccptdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem3/Doc:AccptdTtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>OutsdngTtlNetAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem3_name"/>_OutsdngTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem3_name"/>_OutsdngTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem3/Doc:OutsdngTtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PdgTtlNetAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem3_name"/>_PdgTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem3_name"/>_PdgTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem3/Doc:PdgTtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItem3> end ********** -->
	
	<!--  *********** point <LineItem2> Start ********** -->
	<xsl:template name="LineItem2">
		<xsl:param name="LineItem2"/>
		<xsl:param name="Line_FullName"/>
		<xsl:variable name="LineItem2_name" select="name($LineItem2)"/>
		<xsl:variable name="Line_FullName_fox" select="$Line_FullName"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($LineItem2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$LineItem2/Doc:PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
						</xsl:call-template>
	
						<xsl:variable name="LineItemDetails2" select="$LineItem2/Doc:ComrclLineItms"/>
						<xsl:call-template name="LineItemDetails2">
							<xsl:with-param name="LineItemDetails2" select="$LineItemDetails2"/>
							<xsl:with-param name="Line2_FullName">
								<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="$LineItem2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>LineItmsTtlAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem2_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem2_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem2/Doc:LineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Incoterms2" select="$LineItem2/Doc:Incotrms"/>
						<xsl:call-template name="Incoterms2">
							<xsl:with-param name="Incoterms2" select="$Incoterms2"/>
							<xsl:with-param name="Inco_FullName">
								<xsl:value-of select="substring($LineItem2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Charge13" select="$LineItem2/Doc:FrghtChrgs"/>
						<xsl:call-template name="Charge13">
							<xsl:with-param name="Charge13" select="$Charge13"/>
							<xsl:with-param name="Char_FullName">
								<xsl:value-of select="substring($LineItem2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Adjustment2" select="$LineItem2/Doc:Adjstmnt"/>
						<xsl:call-template name="Adjustment2">
							<xsl:with-param name="Adjustment2" select="$Adjustment2"/>
							<xsl:with-param name="Adjust_FullName">
								<xsl:value-of select="$Line_FullName_fox"/>_<xsl:value-of select="substring($LineItem2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Tax10" select="$LineItem2/Doc:Tax"/>
						<xsl:call-template name="Tax10">
							<xsl:with-param name="Tax10" select="$Tax10"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>TtlNetAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem2_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem2_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem2/Doc:TtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="UserDefinedInformation1" select="$LineItem2/Doc:BuyrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1"/>
							<xsl:with-param name="User_FullName">
								<xsl:value-of select="substring($LineItem2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="UserDefinedInformation1_double" select="$LineItem2/Doc:SellrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1_double"/>
							<xsl:with-param name="User_FullName">
								<xsl:value-of select="substring($LineItem2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItem2> end ********** -->
	<!--  *********** point <LineItemDetails2> Start ********** -->
	<xsl:template name="LineItemDetails2">
		<xsl:param name="LineItemDetails2"/>
		<xsl:param name="Line2_FullName"/>
		<xsl:variable name="LineItemDetails2_name" select="name($LineItemDetails2)"/>
		<xsl:variable name="Line2_FullName_fox" select="$Line2_FullName"/>
		<xsl:for-each select="$LineItemDetails2">
		<xsl:variable name="refrain"><xsl:value-of select="string(position())"/></xsl:variable> 
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItemDetails2_name"/>_<xsl:value-of select="$refrain"/>')</xsl:attribute>
					<xsl:value-of select="substring($LineItemDetails2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails2_name"/>_<xsl:value-of select="$refrain"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>LineItmNb:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails2_name"/>_LineItmNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails2_name"/>_LineItmNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails2/Doc:LineItmNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Quantity1" select="$LineItemDetails2/Doc:Qty"/>
						<xsl:call-template name="Quantity1">
							<xsl:with-param name="Quantity1" select="$Quantity1"/>
						</xsl:call-template>
						<xsl:variable name="UnitPrice7_one" select="$LineItemDetails2/Doc:UnitPric"/>
						<xsl:call-template name="UnitPrice7">
							<xsl:with-param name="UnitPrice7" select="$UnitPrice7_one"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PdctNm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails2_name"/>_PdctNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails2_name"/>_PdctNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails2/Doc:PdctNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="ProductIdentifier1Choice" select="$LineItemDetails2/Doc:PdctIdr"/>
						<xsl:call-template name="ProductIdentifier1Choice">
							<xsl:with-param name="ProductIdentifier1Choice" select="$ProductIdentifier1Choice"/>
						</xsl:call-template>
						<xsl:variable name="ProductCharacteristics1Choice" select="$LineItemDetails2/Doc:PdctChrtcs"/>
						<xsl:call-template name="ProductCharacteristics1Choice">
							<xsl:with-param name="ProductCharacteristics1Choice" select="$ProductCharacteristics1Choice"/>
						</xsl:call-template>
						<xsl:variable name="ProductCategory1Choice" select="$LineItemDetails2/Doc:PdctCtgy"/>
						<xsl:call-template name="ProductCategory1Choice">
							<xsl:with-param name="ProductCategory1Choice" select="$ProductCategory1Choice"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PdctOrgn:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails2_name"/>_PdctOrgn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails2_name"/>_PdctOrgn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails2/Doc:PdctOrgn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Adjustment2" select="$LineItemDetails2/Doc:Adjstmnt"/>
						<xsl:call-template name="Adjustment2">
							<xsl:with-param name="Adjustment2" select="$Adjustment2"/>
							<xsl:with-param name="Adjust_FullName">
								<xsl:value-of select="$Line2_FullName_fox"/>_<xsl:value-of select="substring($LineItemDetails2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>TtlAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails2_name"/>_TtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails2_name"/>_TtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails2/Doc:TtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
		</xsl:for-each>
	</xsl:template>
	<!--  *********** point <LineItemDetails2> end ********** -->
	
	<!--  *********** point <LineItemDetails3> Start ********** -->
	<xsl:template name="LineItemDetails3">
		<xsl:param name="LineItemDetails3"/>
		<xsl:param name="Line3_FullName"/>
		<xsl:variable name="LineItemDetails3_name" select="name($LineItemDetails3)"/>
		<xsl:variable name="Line3_FullName_fox" select="$Line3_FullName"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails3_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($LineItemDetails3_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Line3_FullName_fox"/>_<xsl:value-of select="$LineItemDetails3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>LineItmNb:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails3_name"/>_LineItmNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails3_name"/>_LineItmNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails3/Doc:LineItmNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PdctNm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails3_name"/>_PdctNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails3_name"/>_PdctNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails3/Doc:PdctNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="ProductIdentifier1Choice" select="$LineItemDetails3/Doc:PdctIdr"/>
						<xsl:call-template name="ProductIdentifier1Choice">
							<xsl:with-param name="ProductIdentifier1Choice" select="$ProductIdentifier1Choice"/>
						</xsl:call-template>
						
						<xsl:variable name="ProductCharacteristics1Choice" select="$LineItemDetails3/Doc:PdctChrtcs"/>
						<xsl:call-template name="ProductCharacteristics1Choice">
							<xsl:with-param name="ProductCharacteristics1Choice" select="$ProductCharacteristics1Choice"/>
						</xsl:call-template>
						
						<xsl:variable name="ProductCategory1Choice" select="$LineItemDetails3/Doc:PdctCtgy"/>
						<xsl:call-template name="ProductCategory1Choice">
							<xsl:with-param name="ProductCategory1Choice" select="$ProductCategory1Choice"/>
						</xsl:call-template>	
						
						<xsl:variable name="Quantity1" select="$LineItemDetails3/Doc:OrdrdQty"/>
						<xsl:call-template name="Quantity1">
							<xsl:with-param name="Quantity1" select="$Quantity1"/>
						</xsl:call-template>					
						
						<xsl:variable name="Quantity1_double" select="$LineItemDetails3/Doc:AccptdQty"/>
						<xsl:call-template name="Quantity1">
							<xsl:with-param name="Quantity1" select="$Quantity1_double"/>
						</xsl:call-template>
						
						<xsl:variable name="Quantity1_three" select="$LineItemDetails3/Doc:OutsdngQty"/>
						<xsl:call-template name="Quantity1">
							<xsl:with-param name="Quantity1" select="$Quantity1_three"/>
						</xsl:call-template>
						
						<xsl:variable name="Quantity1_four" select="$LineItemDetails3/Doc:PdgQty"/>
						<xsl:call-template name="Quantity1">
							<xsl:with-param name="Quantity1" select="$Quantity1_four"/>
						</xsl:call-template>
						
						<xsl:variable name="PercentageTolerance1" select="$LineItemDetails3/Doc:QtyTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1"/>
						</xsl:call-template>
						
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>OrdrdAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails3_name"/>_OrdrdAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails3_name"/>_OrdrdAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails3/Doc:OrdrdAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>AccptdAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails3_name"/>_AccptdAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails3_name"/>_AccptdAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails3/Doc:AccptdAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>OutsdngAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails3_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails3_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails3/Doc:OutsdngAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PdgAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails3_name"/>_PdgAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails3_name"/>_PdgAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails3/Doc:PdgAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PercentageTolerance1_double" select="$LineItemDetails3/Doc:PricTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1_double"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItemDetails3> end ********** -->
	
	<!--  *********** point <Quantity1> Start ********** -->
	<xsl:template name="Quantity1">
		<xsl:param name="Quantity1"/>
		<xsl:variable name="Quantity1_name" select="name($Quantity1)"/>

		<xsl:variable name="QtyDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Qty'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="ValDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Val'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Quantity1_name"/>')</xsl:attribute>
					<xsl:value-of select="$QtyDesc"/>
				</a>
			</xsl:element>
		</tr>
		
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Quantity1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>	
							<xsl:element name="TD">								
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Quantity1_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Quantity1_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:for-each select="$Quantity1">
										<xsl:if test="Doc:UnitOfMeasrCd != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$UnitOfMeasrCdDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="Quantity1_name"/>_UnitOfMeasrCd</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="Quantity1_name"/>_UnitOfMeasrCd</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Quantity1/Doc:UnitOfMeasrCd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">								
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Quantity1_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Quantity1_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:for-each select="$Quantity1">
										<xsl:if test="Doc:OthrUnitOfMeasr != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:value-of select="$OthrUnitOfMeasrDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="Quantity1_name"/>_OthrUnitOfMeasr</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="Quantity1_name"/>_OthrUnitOfMeasr</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Quantity1/Doc:OthrUnitOfMeasr"/></xsl:attribute>
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
								<xsl:value-of select="$ValDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Quantity1_name"/>_Val</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Quantity1_name"/>_Val</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Quantity1/Doc:Val"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
							</xsl:element>
							<xsl:element name="TD">								
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$FctrDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Quantity1_name"/>_Fctr</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Quantity1_name"/>_Fctr</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Quantity1/Doc:Fctr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Quantity1> end ********** -->
	<!--  *********** point <UnitPrice7> Start ********** -->
	<xsl:template name="UnitPrice7">
		<xsl:param name="UnitPrice7"/>
		<xsl:variable name="UnitPrice7_name" select="name($UnitPrice7)"/>

		<xsl:variable name="UnitPricDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:UnitPric'"/>
			</xsl:call-template>
		</xsl:variable>
		
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$UnitPrice7_name"/>')</xsl:attribute>
					<xsl:value-of select="$UnitPricDesc"/>
				</a>
			</xsl:element>
		</tr>	
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$UnitPrice7_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">	
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice7_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice7_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:for-each select="$UnitPrice7">
										<xsl:if test="Doc:UnitOfMeasrCd != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:value-of select="$UnitOfMeasrCdDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice7_name"/>_UnitOfMeasrCd</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="UnitPrice7_name"/>_UnitOfMeasrCd</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UnitPrice7/Doc:UnitOfMeasrCd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice7_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice7_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:for-each select="$UnitPrice7">
										<xsl:if test="Doc:OthrUnitOfMeasr != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$OthrUnitOfMeasrDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice7_name"/>_OthrUnitOfMeasr</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice7_name"/>_OthrUnitOfMeasr</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UnitPrice7/Doc:OthrUnitOfMeasr"/></xsl:attribute>
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
								<xsl:value-of select="$AmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice7_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice7_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UnitPrice7/Doc:Amt"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice7_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice7_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">8</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UnitPrice7/Doc:Amt/@Ccy"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$FctrDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice7_name"/>_Fctr</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice7_name"/>_Fctr</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UnitPrice7/Doc:Fctr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <UnitPrice7> end ********** -->
	<!--  *********** point <ProductIdentifier1Choice> Start ********** -->
	<xsl:template name="ProductIdentifier1Choice">
		<xsl:param name="ProductIdentifier1Choice"/>
		<xsl:variable name="ProductIdentifier1Choice_name" select="name($ProductIdentifier1Choice)"/>
		
		<xsl:variable name="PdctIdresc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PdctIdr'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ProductIdentifier1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdctIdresc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ProductIdentifier1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
					
						<xsl:variable name="ProductIdentifier1" select="$ProductIdentifier1Choice/Doc:StrdPdctIdr"/>
						<xsl:call-template name="ProductIdentifier1">
							<xsl:with-param name="ProductIdentifier1" select="$ProductIdentifier1"/>
						</xsl:call-template>
					
						<xsl:variable name="GenericIdentification4" select="$ProductIdentifier1Choice/Doc:OthrPdctIdr"/>
						<xsl:call-template name="GenericIdentification4">
							<xsl:with-param name="GenericIdentification4" select="$GenericIdentification4"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ProductIdentifier1Choice> end ********** -->
	<!--  *********** point <ProductCharacteristics1Choice> Start ********** -->
	<xsl:template name="ProductCharacteristics1Choice">
		<xsl:param name="ProductCharacteristics1Choice"/>
		<xsl:variable name="ProductCharacteristics1Choice_name" select="name($ProductCharacteristics1Choice)"/>
		
		<xsl:variable name="PdctChrtcsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ProductCharacteristics1Choice_name"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ProductCharacteristics1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdctChrtcsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ProductCharacteristics1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">

						<xsl:variable name="ProductCharacteristics1" select="$ProductCharacteristics1Choice/Doc:StrdPdctChrtcs"/>
						<xsl:call-template name="ProductCharacteristics1">
							<xsl:with-param name="ProductCharacteristics1" select="$ProductCharacteristics1"/>
						</xsl:call-template>

						<xsl:variable name="GenericIdentification4" select="$ProductCharacteristics1Choice/Doc:OthrPdctChrtcs"/>
						<xsl:call-template name="GenericIdentification4">
							<xsl:with-param name="GenericIdentification4" select="$GenericIdentification4"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ProductCharacteristics1Choice> end ********** -->
	<!--  *********** point <ProductCategory1Choice> Start ********** -->
	<xsl:template name="ProductCategory1Choice">
		<xsl:param name="ProductCategory1Choice"/>
		<xsl:variable name="ProductCategory1Choice_name" select="name($ProductCategory1Choice)"/>
		
		<xsl:variable name="PdctCtgyDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ProductCategory1Choice_name"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ProductCategory1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdctCtgyDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ProductCategory1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">

						<xsl:variable name="ProductCategory1" select="$ProductCategory1Choice/Doc:StrdPdctCtgy"/>
						<xsl:call-template name="ProductCategory1">
							<xsl:with-param name="ProductCategory1" select="$ProductCategory1"/>
						</xsl:call-template>

						<xsl:variable name="GenericIdentification4" select="$ProductCategory1Choice/Doc:OthrPdctCtgy"/>
						<xsl:call-template name="GenericIdentification4">
							<xsl:with-param name="GenericIdentification4" select="$GenericIdentification4"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ProductCategory1Choice> end ********** -->
	<!--  *********** point <ProductIdentifier1> Start ********** -->
	<xsl:template name="ProductIdentifier1">
		<xsl:param name="ProductIdentifier1"/>
		<xsl:variable name="ProductIdentifier1_name" select="name($ProductIdentifier1)"/>
		
		<xsl:variable name="StrdPdctIdrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ProductIdentifier1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="IdrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Idr'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ProductIdentifier1_name"/>')</xsl:attribute>
					<xsl:value-of select="$StrdPdctIdrDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ProductIdentifier1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ProductIdentifier1_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ProductIdentifier1_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ProductIdentifier1/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$IdrDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ProductIdentifier1_name"/>_Idr</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ProductIdentifier1_name"/>_Idr</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ProductIdentifier1/Doc:Idr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ProductIdentifier1> end ********** -->
	<!--  *********** point <TransportBySea2> Start ********** -->
	<xsl:template name="TransportBySea2">
		<xsl:param name="TransportBySea2"/>
		<xsl:variable name="TransportBySea2_name" select="name($TransportBySea2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportBySea2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($TransportBySea2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportBySea2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PortOfLoadng:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportBySea2_name"/>_PortOfLoadng</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportBySea2_name"/>_PortOfLoadng</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportBySea2/Doc:PortOfLoadng"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>PortOfDschrge:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportBySea2_name"/>_PortOfDschrge</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportBySea2_name"/>_PortOfDschrge</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportBySea2/Doc:PortOfDschrge"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>VsslNm:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportBySea2_name"/>_VsslNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportBySea2_name"/>_VsslNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportBySea2/Doc:VsslNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportBySea2> end ********** -->
	<!--  *********** point <TransportByRoad2> Start ********** -->
	<xsl:template name="TransportByRoad2">
		<xsl:param name="TransportByRoad2"/>
		<xsl:variable name="TransportByRoad2_name" select="name($TransportByRoad2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportByRoad2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($TransportByRoad2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">	
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PlcOfRct:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRoad2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByRoad2/Doc:PlcOfRct"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>PlcOfDlvry:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRoad2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByRoad2/Doc:PlcOfDlvry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>RoadCrrierNm:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRoad2_name"/>_RoadCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad2_name"/>_RoadCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByRoad2/Doc:RoadCrrierNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportByRoad2> end ********** -->
	<!--  *********** point <TransportByRail2> Start ********** -->
	<xsl:template name="TransportByRail2">
		<xsl:param name="TransportByRail2"/>
		<xsl:variable name="TransportByRail2_name" select="name($TransportByRail2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportByRail2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($TransportByRail2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportByRail2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PlcOfRct:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRail2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRail2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByRail2/Doc:PlcOfRct"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>PlcOfDlvry:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRail2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRail2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByRail2/Doc:PlcOfDlvry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>RailCrrierNm:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByRail2_name"/>_RailCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByRail2_name"/>_RailCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByRail2/Doc:RailCrrierNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportByRail2> end ********** -->
	<!--  *********** point <ProductCharacteristics1> Start ********** -->
	<xsl:template name="ProductCharacteristics1">
		<xsl:param name="ProductCharacteristics1"/>
		<xsl:variable name="ProductCharacteristics1_name" select="name($ProductCharacteristics1)"/>

		<xsl:variable name="StrdPdctChrtcsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ProductCharacteristics1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="ChrtcsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Chrtcs'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ProductCharacteristics1_name"/>')</xsl:attribute>
					<xsl:value-of select="$StrdPdctChrtcsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ProductCharacteristics1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ProductCharacteristics1_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ProductCharacteristics1_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ProductCharacteristics1/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$ChrtcsDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ProductCharacteristics1_name"/>_Chrtcs</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ProductCharacteristics1_name"/>_Chrtcs</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ProductCharacteristics1/Doc:Chrtcs"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ProductCharacteristics1> end ********** -->
	<!--  *********** point <ProductCategory1> Start ********** -->
	<xsl:template name="ProductCategory1">
		<xsl:param name="ProductCategory1"/>
		<xsl:variable name="ProductCategory1_name" select="name($ProductCategory1)"/>
		
		<xsl:variable name="StrdPdctCtgyDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ProductCategory1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="CtgyDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Ctgy'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ProductCategory1_name"/>')</xsl:attribute>
					<xsl:value-of select="$StrdPdctCtgyDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ProductCategory1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ProductCategory1_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ProductCategory1_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ProductCategory1/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$CtgyDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ProductCategory1_name"/>_Ctgy</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ProductCategory1_name"/>_Ctgy</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ProductCategory1/Doc:Ctgy"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ProductCategory1> end ********** -->
	<!--  *********** point <GenericIdentification4> Start ********** -->
	<xsl:template name="GenericIdentification4">
		<xsl:param name="GenericIdentification4"/>
		<xsl:variable name="GenericIdentification4_name" select="name($GenericIdentification4)"/>
		
		<xsl:variable name="OthrPdctIdrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$GenericIdentification4_name"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$GenericIdentification4_name"/>')</xsl:attribute>
					<xsl:value-of select="$OthrPdctIdrDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$GenericIdentification4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$IdentificationDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$GenericIdentification4_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$GenericIdentification4_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$GenericIdentification4/Doc:Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$IdTpnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$GenericIdentification4_name"/>_IdTp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$GenericIdentification4_name"/>_IdTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$GenericIdentification4/Doc:IdTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <GenericIdentification4> end ********** -->

	<!--  *********** point <Adjustment1> Start ********** -->
	<xsl:template name="Adjustment1">
		<xsl:param name="Adjust1_FullName"/>
		<xsl:param name="Adjustment1"/>
		<xsl:variable name="Adjust1_FullName_fox" select="$Adjust1_FullName"/>
		<xsl:variable name="Adjustment1_name" select="name($Adjustment1)"/>
		
		<xsl:variable name="AdjstmntDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Adjustment1_name"/>
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

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Adjust1_FullName_fox"/>_<xsl:value-of select="$Adjustment1_name"/>')</xsl:attribute>
					<xsl:value-of select="$AdjstmntDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Adjust1_FullName_fox"/>_<xsl:value-of select="$Adjustment1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment1_name"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment1_name"/>_Tp_check</xsl:attribute>
									<xsl:for-each select="$Adjustment1">
										<xsl:if test="Doc:Tp != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$TpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment1_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment1_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment1/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment1_name"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment1_name"/>_Tp_check</xsl:attribute>
									<xsl:for-each select="$Adjustment1">
										<xsl:if test="Doc:OthrAdjstmntTp != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$OthrAdjstmntTpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment1_name"/>_OthrAdjstmntTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment1_name"/>_OthrAdjstmntTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment1/Doc:OthrAdjstmntTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment1_name"/>_Amt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment1_name"/>_Amt_check</xsl:attribute>
									<xsl:for-each select="$Adjustment1">
										<xsl:if test="Doc:Amt != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$AmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment1_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment1_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment1/Doc:Amt"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment1_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment1_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">8</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment1/Doc:Amt/@Ccy"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment1_name"/>_Amt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment1_name"/>_Amt_check</xsl:attribute>
									<xsl:for-each select="$Adjustment1">
										<xsl:if test="Doc:Rate != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$RateDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment1_name"/>_Rate</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment1_name"/>_Rate</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment1/Doc:Rate"/></xsl:attribute>
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
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment1_name"/>_Drctn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment1_name"/>_Drctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment1/Doc:Drctn"/></xsl:attribute>
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
	<!--  *********** point <Adjustment1> end ********** -->
	
	<!--  *********** point <Adjustment2> Start ********** -->
	<xsl:template name="Adjustment2">
		<xsl:param name="Adjust_FullName"/>
		<xsl:param name="Adjustment2"/>
		<xsl:variable name="Adjust_FullName_fox" select="$Adjust_FullName"/>
		<xsl:variable name="Adjustment2_name" select="name($Adjustment2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Adjust_FullName_fox"/>_<xsl:value-of select="$Adjustment2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($Adjustment2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Adjust_FullName_fox"/>_<xsl:value-of select="$Adjustment2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment2_name"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment2_name"/>_Tp_check</xsl:attribute>
									<xsl:for-each select="$Adjustment2">
										<xsl:if test="Doc:Tp != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>Tp:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment2_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="Adjustment2_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment2/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment2_name"/>_OthrAdjstmntTp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment2_name"/>_OthrAdjstmntTp_check</xsl:attribute>
									<xsl:for-each select="$Adjustment2">
										<xsl:if test="Doc:OthrAdjstmntTp != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>OthrAdjstmntTp:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment2_name"/>_OthrAdjstmntTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment2_name"/>_OthrAdjstmntTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment2/Doc:OthrAdjstmntTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Drctn:</xsl:text>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment2_name"/>_Drctn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment2_name"/>_Drctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment2/Doc:Drctn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Amt:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Adjustment2_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Adjustment2_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Adjustment2/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Adjustment2> end ********** -->
	<!--  *********** point <Incoterms2> Start ********** -->
	<xsl:template name="Incoterms2">
		<xsl:param name="Incoterms2"/>
		<xsl:param name="Inco_FullName"/>
		<xsl:variable name="Incoterms2_name" select="name($Incoterms2)"/>
		<xsl:variable name="Inco_FullName_fox" select="$Inco_FullName"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Inco_FullName_fox"/>_<xsl:value-of select="$Incoterms2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($Incoterms2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Inco_FullName_fox"/>_<xsl:value-of select="$Incoterms2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($Incoterms2_name,5)"/>_Cd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($Incoterms2_name,5)"/>_Cd_check</xsl:attribute>
									<xsl:for-each select="$Incoterms2">
										<xsl:if test="Doc:Cd != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>Cd:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($Incoterms2_name,5)"/>_Cd</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($Incoterms2_name,5)"/>_Cd</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incoterms2/Doc:Cd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($Incoterms2_name,5)"/>_BEI_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($Incoterms2_name,5)"/>_BEI_check</xsl:attribute>
									<xsl:for-each select="$Incoterms2">
										<xsl:if test="Doc:Othr != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>Othr:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($Incoterms2_name,5)"/>_Othr</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($Incoterms2_name,5)"/>_Othr</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incoterms2/Doc:Othr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Lctn:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Incoterms2_name"/>_Lctn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Incoterms2_name"/>_Lctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incoterms2/Doc:Lctn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Incoterms2> end ********** -->
	
	<!--  *********** point <ChargesDetails1> Start ********** -->
	<xsl:template name="ChargesDetails1">
		<xsl:param name="ChargesDetails1"/>
		<xsl:param name="Char1_FullName"/>
		<xsl:variable name="ChargesDetails1_name" select="name($ChargesDetails1)"/>
		<xsl:variable name="Char1_FullName_fox" select="$Char1_FullName"/>
		
		<xsl:variable name="ChrgsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ChargesDetails1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="OthrChrgsTpDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:OthrChrgsTp'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Char1_FullName_fox"/>_<xsl:value-of select="$ChargesDetails1_name"/>')</xsl:attribute>
					<xsl:value-of select="$ChrgsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Char1_FullName_fox"/>_<xsl:value-of select="$ChargesDetails1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Tp_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails1">
										<xsl:if test="Doc:Tp != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$TpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails1/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_OthrChrgsTp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_OthrChrgsTp_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails1">
										<xsl:if test="Doc:OthrChrgsTp != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$OthrChrgsTpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_OthrChrgsTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_OthrChrgsTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails1/Doc:OthrChrgsTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Amt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Amt_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails1">
										<xsl:if test="Doc:Amt != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$AmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Amt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails1/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Rate_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Rate_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails1">
										<xsl:if test="Doc:Rate != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$RateDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Rate</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Rate</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails1/Doc:Rate"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ChargesDetails1> end ********** -->
	
	<!--  *********** point <ChargesDetails2> Start ********** -->
	<xsl:template name="ChargesDetails2">
		<xsl:param name="ChargesDetails2"/>
		<xsl:param name="Char2_FullName"/>
		<xsl:variable name="ChargesDetails2_name" select="name($ChargesDetails2)"/>
		<xsl:variable name="Char2_FullName_fox" select="$Char2_FullName"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Char2_FullName_fox"/>_<xsl:value-of select="$ChargesDetails2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ChargesDetails2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Char2_FullName_fox"/>_<xsl:value-of select="$ChargesDetails2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails2_name,5)"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails2_name,5)"/>_Tp_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails2">
										<xsl:if test="Doc:Tp != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>Tp:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails2_name,5)"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails2_name,5)"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails2/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails2_name,5)"/>_OthrChrgsTp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails2_name,5)"/>_OthrChrgsTp_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails2">
										<xsl:if test="Doc:OthrChrgsTp != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>OthrChrgsTp:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($ChargesDetails2_name,5)"/>_OthrChrgsTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($ChargesDetails2_name,5)"/>_OthrChrgsTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails2/Doc:OthrChrgsTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">			
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Amt:</xsl:text>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails2_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails2_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails2/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ChargesDetails2> end ********** -->

	<!--  *********** point <Charge12> Start ********** -->
	<xsl:template name="Charge12">
		<xsl:param name="Charge12"/>
		<xsl:param name="Char12_FullName"/>
		<xsl:variable name="Charge12_name" select="name($Charge12)"/>
		<xsl:variable name="Char12_FullName_fox" select="$Char12_FullName"/>

		<xsl:variable name="FrghtChrgsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Charge12_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Char12_FullName_fox"/>_<xsl:value-of select="$Charge12_name"/>')</xsl:attribute>
					<xsl:value-of select="$FrghtChrgsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Char12_FullName_fox"/>_<xsl:value-of select="$Charge12_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Charge12_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Charge12_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Charge12/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						
						<xsl:variable name="ChargesDetails1" select="$Charge12/Doc:Chrgs"/>
						<xsl:call-template name="ChargesDetails1">
							<xsl:with-param name="ChargesDetails1" select="$ChargesDetails1"/>
							<xsl:with-param name="Char1_FullName">
								<xsl:value-of select="$Char12_FullName_fox"/>_<xsl:value-of select="$Charge12_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Charge12> end ********** -->
	
	<!--  *********** point <Charge13> Start ********** -->
	<xsl:template name="Charge13">
		<xsl:param name="Charge13"/>
		<xsl:param name="Char_FullName"/>
		<xsl:variable name="Charge13_name" select="name($Charge13)"/>
		<xsl:variable name="Char_FullName_fox" select="$Char_FullName"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Char_FullName_fox"/>_<xsl:value-of select="$Charge13_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($Charge13_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Char_FullName_fox"/>_<xsl:value-of select="$Charge13_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>Tp:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Charge13_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Charge13_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Charge13/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="ChargesDetails2" select="$Charge13/Doc:Chrgs"/>
						<xsl:call-template name="ChargesDetails2">
							<xsl:with-param name="ChargesDetails2" select="$ChargesDetails2"/>
							<xsl:with-param name="Char2_FullName">
								<xsl:value-of select="$Char_FullName_fox"/>_<xsl:value-of select="$Charge13_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Charge13> end ********** -->
	
	<!--  *********** point <Tax9> Start ********** -->
	<xsl:template name="Tax9">
		<xsl:param name="Tax9"/>
		<xsl:variable name="Tax9_name" select="name($Tax9)"/>

		<xsl:variable name="TaxDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Tax9_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="OthrTaxTpDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:OthrTaxTp'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Tax9_name"/>')</xsl:attribute>
					<xsl:value-of select="$TaxDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Tax9_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">					
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax9_name"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax9_name"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:value-of select="$TpDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax9_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="Tax9_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax9/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax9_name"/>_OthrAdjstmntTp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax9_name"/>_OthrAdjstmntTp_check</xsl:attribute>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$OthrTaxTpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax9_name"/>_OthrTaxTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax9_name"/>_OthrTaxTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax9/Doc:OthrTaxTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">					
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax9_name"/>_Amt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax9_name"/>_Amt_check</xsl:attribute>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:value-of select="$AmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax9_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="Tax9_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax9/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax9_name"/>_Rate_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax9_name"/>_Rate_check</xsl:attribute>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$RateDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax9_name"/>_Rate</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax9_name"/>_Rate</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax9/Doc:Rate"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Tax9> end ********** -->
	
	<!--  *********** point <Tax10> Start ********** -->
	<xsl:template name="Tax10">
		<xsl:param name="Tax10"/>
		<xsl:variable name="Tax10_name" select="name($Tax10)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Tax10_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($Tax10_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Tax10_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax10_name"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax10_name"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:element>
								<xsl:text>Tp:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax10_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="Tax10_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax10/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax10_name"/>_OthrAdjstmntTp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax10_name"/>_OthrAdjstmntTp_check</xsl:attribute>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:element>
								<xsl:text>OthrTaxTp:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax10_name"/>_OthrTaxTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax10_name"/>_OthrTaxTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax10/Doc:OthrTaxTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Amt:</xsl:text>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax10_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax10_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax10/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Tax10> end ********** -->
	<!--  *********** point <UserDefinedInformation1> Start ********** -->
	<xsl:template name="UserDefinedInformation1">
		<xsl:param name="UserDefinedInformation1"/>
		<xsl:param name="User_FullName"/>
		<xsl:variable name="UserDefinedInformation1_name" select="name($UserDefinedInformation1)"/>
		<xsl:variable name="User_FullName_fox" select="$User_FullName"/>
		
		<xsl:variable name="DfndInfDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$UserDefinedInformation1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="LablDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Labl'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="InfDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Inf'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$User_FullName_fox"/>_<xsl:value-of select="$UserDefinedInformation1_name"/>')</xsl:attribute>
					<xsl:value-of select="$DfndInfDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$User_FullName_fox"/>_<xsl:value-of select="$UserDefinedInformation1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LablDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UserDefinedInformation1_name"/>_Labl</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UserDefinedInformation1_name"/>_Labl</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UserDefinedInformation1/Doc:Labl"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$InfDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UserDefinedInformation1_name"/>_Inf</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UserDefinedInformation1_name"/>_Inf</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UserDefinedInformation1/Doc:Inf"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <UserDefinedInformation1> end ********** -->
	<!--  *********** point <PaymentTerms1> Start ********** -->
	<xsl:template name="PaymentTerms1">
		<xsl:param name="PaymentTerms1"/>
		<xsl:variable name="PaymentTerms1_name" select="name($PaymentTerms1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PaymentTerms1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($PaymentTerms1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_OthrPmtTerms_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_OthrPmtTerms_check</xsl:attribute>
									<xsl:for-each select="$PaymentTerms1">
										<xsl:if test="Doc:OthrPmtTerms != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>OthrPmtTerms:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_OthrPmtTermsTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_OthrPmtTerms</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentTerms1/Doc:OthrPmtTerms"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PaymentPeriod1" select="$PaymentTerms1/Doc:PmtCd"/>
						<xsl:call-template name="PaymentPeriod1">
							<xsl:with-param name="PaymentPeriod1" select="$PaymentPeriod1"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Pctg_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Pctg_check</xsl:attribute>
									<xsl:for-each select="$PaymentTerms1">
										<xsl:if test="Doc:Pctg != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>Pctg:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Pctg</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Pctg</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentTerms1/Doc:Pctg"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Amt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Amt_check</xsl:attribute>
									<xsl:for-each select="$PaymentTerms1">
										<xsl:if test="Doc:Amt != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>Amt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Amt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentTerms1/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <PaymentTerms1> end ********** -->
	<!--  *********** point <PaymentPeriod1> Start ********** -->
	<xsl:template name="PaymentPeriod1">
		<xsl:param name="PaymentPeriod1"/>
		<xsl:variable name="PaymentPeriod1_name" select="name($PaymentPeriod1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PaymentPeriod1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($PaymentPeriod1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$PaymentPeriod1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>Id:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentPeriod1_name"/>_Id</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentPeriod1_name"/>_Id</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentPeriod1/Doc:Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>NbOfDays:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentPeriod1_name"/>_NbOfDays</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentPeriod1_name"/>_NbOfDays</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentPeriod1/Doc:NbOfDays"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <PaymentPeriod1> end ********** -->
	<!--  *********** point <SettlementTerms1> Start ********** -->
	<xsl:template name="SettlementTerms1">
		<xsl:param name="SettlementTerms1"/>
		<xsl:variable name="SettlementTerms1_name" select="name($SettlementTerms1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$SettlementTerms1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($SettlementTerms1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$SettlementTerms1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="FinancialInstitutionIdentification4Choice" select="$SettlementTerms1/Doc:FnlAgt"/>
						<xsl:call-template name="FinancialInstitutionIdentification4Choice">
							<xsl:with-param name="FinancialInstitutionIdentification4Choice" select="$FinancialInstitutionIdentification4Choice"/>
						</xsl:call-template>
						<xsl:variable name="AccountIdentificationOrNameChoice" select="$SettlementTerms1/Doc:BnfcryAcct"/>
						<xsl:call-template name="AccountIdentificationOrNameChoice">
							<xsl:with-param name="AccountIdentificationOrNameChoice" select="$AccountIdentificationOrNameChoice"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <SettlementTerms1> end ********** -->
	<!--  *********** point <FinancialInstitutionIdentification4Choice> Start ********** -->
	<xsl:template name="FinancialInstitutionIdentification4Choice">
		<xsl:param name="FinancialInstitutionIdentification4Choice"/>
		<xsl:variable name="FinancialInstitutionIdentification4Choice_name" select="name($FinancialInstitutionIdentification4Choice)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$FinancialInstitutionIdentification4Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($FinancialInstitutionIdentification4Choice_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$FinancialInstitutionIdentification4Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id">
									<xsl:value-of select="substring($FinancialInstitutionIdentification4Choice_name,5)"/>_BIC_check</xsl:attribute>
									<xsl:attribute name="name">
									<xsl:value-of select="substring($FinancialInstitutionIdentification4Choice_name,5)"/>_BIC_check</xsl:attribute>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:element>
								<xsl:text>BIC:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($FinancialInstitutionIdentification4Choice_name,5)"/>_BIC</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($FinancialInstitutionIdentification4Choice_name,5)"/>_BIC</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$FinancialInstitutionIdentification4Choice/Doc:BIC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="NameAndAddress6" select="$FinancialInstitutionIdentification4Choice/Doc:NmAndAdr"/>
						<xsl:call-template name="NameAndAddress6">
							<xsl:with-param name="NameAndAddress6" select="$NameAndAddress6"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <FinancialInstitutionIdentification4Choice> end ********** -->
	<!--  *********** point <NameAndAddress6> Start ********** -->
	<xsl:template name="NameAndAddress6">
		<xsl:param name="NameAndAddress6"/>
		<xsl:variable name="NameAndAddress6_name" select="name($NameAndAddress6)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$NameAndAddress6_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($NameAndAddress6_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$NameAndAddress6_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($NameAndAddress6_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($NameAndAddress6_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:element>
								<xsl:text>Nm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($NameAndAddress6_name,5)"/>_Nm</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($NameAndAddress6_name,5)"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$NameAndAddress6/Doc:Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PostalAddress2" select="$NameAndAddress6/Doc:Adr"/>
						<xsl:call-template name="PostalAddress2">
							<xsl:with-param name="PostalAddress2" select="$PostalAddress2"/>
							<xsl:with-param name="Post_FullName">
								<xsl:value-of select="substring($NameAndAddress6_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <NameAndAddress6> end ********** -->
	<!--  *********** point <AccountIdentificationAndName2> Start ********** -->
	<xsl:template name="AccountIdentificationAndName2">
		<xsl:param name="AccountIdentificationAndName2"/>
		<xsl:variable name="AccountIdentificationAndName2_name" select="name($AccountIdentificationAndName2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AccountIdentificationAndName2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($AccountIdentificationAndName2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$AccountIdentificationAndName2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="AccountIdentification1Choice" select="$AccountIdentificationAndName2/Doc:NmAndId"/>
						<xsl:call-template name="AccountIdentification1Choice">
							<xsl:with-param name="AccountIdentification1Choice" select="$AccountIdentification1Choice"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>Nm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AccountIdentificationAndName2_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AccountIdentificationAndName2_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AccountIdentificationAndName2/Doc:Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <AccountIdentificationAndName2> end ********** -->
	<!--  *********** point <AccountIdentification1Choice> Start ********** -->
	<xsl:template name="AccountIdentification1Choice">
		<xsl:param name="AccountIdentification1Choice"/>
		<xsl:variable name="AccountIdentification1Choice_name" select="name($AccountIdentification1Choice)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AccountIdentification1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($AccountIdentification1Choice_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$AccountIdentification1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>IBAN:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AccountIdentification1Choice_name"/>_IBAN</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AccountIdentification1Choice_name"/>_IBAN</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AccountIdentification1Choice/Doc:IBAN"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">	
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>BBAN:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AccountIdentification1Choice_name"/>_BBAN</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AccountIdentification1Choice_name"/>_BBAN</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AccountIdentification1Choice/Doc:BBAN"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>UPIC:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AccountIdentification1Choice_name"/>_UPIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AccountIdentification1Choice_name"/>_UPIC</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AccountIdentification1Choice/Doc:UPIC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="SimpleIdentificationInformation" select="$AccountIdentification1Choice/Doc:DmstAcct"/>
						<xsl:call-template name="SimpleIdentificationInformation">
							<xsl:with-param name="SimpleIdentificationInformation" select="$SimpleIdentificationInformation"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <AccountIdentification1Choice> end ********** -->
	<!--  *********** point <AccountIdentificationOrNameChoice> Start ********** -->
	<xsl:template name="AccountIdentificationOrNameChoice">
		<xsl:param name="AccountIdentificationOrNameChoice"/>
		<xsl:variable name="AccountIdentificationOrNameChoice_name" select="name($AccountIdentificationOrNameChoice)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AccountIdentificationOrNameChoice_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($AccountIdentificationOrNameChoice_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$AccountIdentificationOrNameChoice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>Nm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AccountIdentificationOrNameChoice_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AccountIdentificationOrNameChoice_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AccountIdentificationOrNameChoice/Doc:Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="AccountIdentification1Choice" select="$AccountIdentificationOrNameChoice/Doc:Id"/>
						<xsl:call-template name="AccountIdentification1Choice">
							<xsl:with-param name="AccountIdentification1Choice" select="$AccountIdentification1Choice"/>
						</xsl:call-template>
						<xsl:variable name="AccountIdentificationAndName2" select="$AccountIdentificationOrNameChoice/Doc:NmAndId"/>
						<xsl:call-template name="AccountIdentificationAndName2">
							<xsl:with-param name="AccountIdentificationAndName2" select="$AccountIdentificationAndName2"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <AccountIdentificationOrNameChoice> end ********** -->
	<!--  *********** point <TransportDataSet1> Start ********** -->
	<xsl:template name="TransportDataSet1">
		<xsl:param name="TransportDataSet1"/>
		<xsl:variable name="TransportDataSet1_name" select="name($TransportDataSet1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportDataSet1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($TransportDataSet1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportDataSet1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification1" select="$TransportDataSet1/Doc:DataSetId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="Docu_FullName">
								<xsl:value-of select="substring($TransportDataSet1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification4" select="$TransportDataSet1/Doc:Buyr"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($TransportDataSet1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification4_double" select="$TransportDataSet1/Doc:Sellr"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4_double"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($TransportDataSet1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification4_three" select="$TransportDataSet1/Doc:ShipTo"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4_three"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($TransportDataSet1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification4_four" select="$TransportDataSet1/Doc:Consgn"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4_four"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($TransportDataSet1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="TransportDetails1" select="$TransportDataSet1/Doc:TrnsprtInf"/>
						<xsl:call-template name="TransportDetails1">
							<xsl:with-param name="TransportDetails1" select="$TransportDetails1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportDataSet1> end ********** -->
	<!--  *********** point <TransportDetails1> Start ********** -->
	<xsl:template name="TransportDetails1">
		<xsl:param name="TransportDetails1"/>
		<xsl:variable name="TransportDetails1_name" select="name($TransportDetails1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportDetails1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($TransportDetails1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportDetails1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$TransportDetails1/Doc:TrnsprtDocRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
						</xsl:call-template>
						<xsl:variable name="TransportedGoods1" select="$TransportDetails1/Doc:TrnsprtdGoods"/>
						<xsl:call-template name="TransportedGoods1">
							<xsl:with-param name="TransportedGoods1" select="$TransportedGoods1"/>
						</xsl:call-template>
						<xsl:variable name="TransportMeans2Choice" select="$TransportDetails1/Doc:RtgSummry"/>
						<xsl:call-template name="TransportMeans2Choice">
							<xsl:with-param name="TransportMeans2Choice" select="$TransportMeans2Choice"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($TransportDetails1_name,5)"/>_PropsdShipmntDt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($TransportDetails1_name,5)"/>_PropsdShipmntDt_check</xsl:attribute>
									<xsl:for-each select="$TransportDetails1">
										<xsl:if test="Doc:PropsdShipmntDt != '' ">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>PropsdShipmntDt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($TransportDetails1_name,5)"/>_PropsdShipmntDt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($TransportDetails1_name,5)"/>_PropsdShipmntDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportDetails1/Doc:PropsdShipmntDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($TransportDetails1_name,5)"/>_ActlShipmntDt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($TransportDetails1_name,5)"/>_ActlShipmntDt_check</xsl:attribute>
									<xsl:for-each select="$TransportDetails1">
										<xsl:if test="Doc:ActlShipmntDt != '' ">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>ActlShipmntDt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($TransportDetails1_name,5)"/>_ActlShipmntDt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($TransportDetails1_name,5)"/>_ActlShipmntDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportDetails1/Doc:ActlShipmntDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Incoterms2" select="$TransportDetails1/Doc:Incotrms"/>
						<xsl:call-template name="Incoterms2">
							<xsl:with-param name="Incoterms2" select="$Incoterms2"/>
							<xsl:with-param name="Inco_FullName">
								<xsl:value-of select="substring($TransportDetails1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Charge13" select="$TransportDetails1/Doc:FrghtChrgs"/>
						<xsl:call-template name="Charge13">
							<xsl:with-param name="Charge13" select="$Charge13"/>
							<xsl:with-param name="Char_FullName">
								<xsl:value-of select="substring($TransportDetails1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportDetails1> end ********** -->
	<!--  *********** point <TransportedGoods1> Start ********** -->
	<xsl:template name="TransportedGoods1">
		<xsl:param name="TransportedGoods1"/>
		<xsl:variable name="TransportedGoods1_name" select="name($TransportedGoods1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">100</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportedGoods1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($TransportedGoods1_name,5)"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">100</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$TransportedGoods1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$TransportedGoods1/Doc:PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="Docu7_FullName">
								<xsl:value-of select="substring($TransportedGoods1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>GoodsDesc:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportedGoods1_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportedGoods1_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportedGoods1/Doc:GoodsDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="UserDefinedInformation1" select="$TransportedGoods1/Doc:BuyrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1"/>
						</xsl:call-template>
						<xsl:variable name="UserDefinedInformation1_double" select="$TransportedGoods1/Doc:SellrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1_double"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportedGoods1> end ********** -->
	<!--  *********** point <TransportMeans2Choice> Start ********** -->
	<xsl:template name="TransportMeans2Choice">
		<xsl:param name="TransportMeans2Choice"/>
		<xsl:variable name="TransportMeans2Choice_name" select="name($TransportMeans2Choice)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportMeans2Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($TransportMeans2Choice_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportMeans2Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="SingleTransport2" select="$TransportMeans2Choice/Doc:IndvTrnsprt"/>
						<xsl:call-template name="SingleTransport2">
							<xsl:with-param name="SingleTransport2" select="$SingleTransport2"/>
						</xsl:call-template>
						
						<xsl:variable name="MultimodalTransport2" select="$TransportMeans2Choice/Doc:MltmdlTrnsprt"/>
						<xsl:call-template name="MultimodalTransport2">
							<xsl:with-param name="MultimodalTransport2" select="$MultimodalTransport2"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportMeans2Choice> end ********** -->
	<!--  *********** point <TransportByAir2> Start ********** -->
	<xsl:template name="TransportByAir2">
		<xsl:param name="TransportByAir2"/>
		<xsl:variable name="TransportByAir2_name" select="name($TransportByAir2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportByAir2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($TransportByAir2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportByAir2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
					<tr><td/></tr><!--
						<xsl:variable name="AirportName1Choice" select="$TransportByAir2/Doc:DprtureAirprt"/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice"/>
						</xsl:call-template>
						<xsl:variable name="AirportName1Choice_double" select="$TransportByAir2/Doc:DstnAirprt"/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice_double"/>
						</xsl:call-template>-->
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>AirCrrierNm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportByAir2_name"/>_AirCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportByAir2_name"/>_AirCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportByAir2/Doc:AirCrrierNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportByAir2> end ********** -->
	<!--  *********** point <SingleTransport2> Start ********** -->
	<xsl:template name="SingleTransport2">
		<xsl:param name="SingleTransport2"/>
		<xsl:variable name="SingleTransport2_name" select="name($SingleTransport2)"/>
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
							<xsl:attribute name="checked">checked</xsl:attribute>
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
					<xsl:value-of select="substring($SingleTransport2_name,5)"/>
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
					<tr><td/></tr>
						<xsl:variable name="DocumentIdentification7" select="$SingleTransport2/Doc:PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="Docu7_FullName">
								<xsl:value-of select="substring($SingleTransport2_name,5)"/>
							</xsl:with-param>
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
	<!--  *********** point <AirportName1Choice> Start ********** -->
	<xsl:template name="AirportName1Choice">
		<xsl:param name="AirportName1Choice"/>
		<xsl:param name="DprtureAirprt_FullName"/>
		<xsl:variable name="AirportName1Choice_name" select="name($AirportName1Choice)"/>
		<xsl:variable name="AirportName1_FullName_fox" select="$DprtureAirprt_FullName"/>
		
		<xsl:variable name="DprtureAirprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$AirportName1Choice_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="AirprtCdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:AirprtCd'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="OthrAirprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:OthrAirprtDesc'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="TwnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Twn'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="AirprtNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:AirprtNm'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<!--<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AirportName1Choice_name"/>')</xsl:attribute>-->
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$DprtureAirprtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<!--<xsl:attribute name="id"><xsl:value-of select="$AirportName1Choice_name"/></xsl:attribute>-->
					<xsl:attribute name="id"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/></xsl:attribute>					
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($AirportName1Choice_name,5)"/>_AirprtCd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($AirportName1Choice_name,5)"/>_AirprtCd_check</xsl:attribute>
									<xsl:for-each select="$AirportName1Choice">
										<xsl:if test="Doc:AirprtCd != '' ">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:value-of select="$AirprtCdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($AirportName1Choice_name,5)"/>_AirprtCd</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($AirportName1Choice_name,5)"/>_AirprtCd</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AirportName1Choice/Doc:AirprtCd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
								<a>
									<xsl:attribute name="class">Heading3</xsl:attribute>
									<xsl:attribute name="style">cursor:hand</xsl:attribute>
									<!--<xsl:attribute name="onClick">Swap('OthrAirprtDesc')</xsl:attribute>-->
									<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>_<xsl:value-of select="$OthrAirprtDesc"/>')</xsl:attribute>
									<xsl:value-of select="$OthrAirprtDesc"/>
								</a>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($AirportName1Choice_name,5)"/>_AirprtCd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($AirportName1Choice_name,5)"/>_AirprtCd_check</xsl:attribute>
									<xsl:for-each select="$AirportName1Choice/OthrAirprtDesc">
										<xsl:if test="Doc:Twn != '' ">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:element name="DIV">
									<!--<xsl:attribute name="id">OthrAirprtDesc</xsl:attribute>-->
									<xsl:attribute name="id"><xsl:value-of select="$AirportName1_FullName_fox"/>_<xsl:value-of select="$AirportName1Choice_name"/>_<xsl:value-of select="$OthrAirprtDesc"/></xsl:attribute>
									<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
									<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>												
												<xsl:value-of select="$TwnDesc"/>
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$AirportName1Choice_name"/>_OthrAirprtDesc_Twn</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$AirportName1Choice_name"/>_OthrAirprtDesc_Twn</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$AirportName1Choice/Doc:OthrAirprtDesc/Doc:Twn"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>												
												<xsl:value-of select="$AirprtNmDesc"/>
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$AirportName1Choice_name"/>_OthrAirprtDesc_AirprtNm</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$AirportName1Choice_name"/>_OthrAirprtDesc_AirprtNm</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$AirportName1Choice/Doc:OthrAirprtDesc/Doc:AirprtNm"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
									</table>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <AirportName1Choice> end ********** -->
	<!--  *********** point <MultimodalTransport2> Start ********** -->
	<xsl:template name="MultimodalTransport2">
		<xsl:param name="MultimodalTransport2"/>
		<xsl:variable name="MultimodalTransport2_name" select="name($MultimodalTransport2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">radio</xsl:attribute>
					<xsl:attribute name="id"><xsl:value-of select="substring($MultimodalTransport2_name,5)"/>_check</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="substring($MultimodalTransport2_name,5)"/>_check</xsl:attribute>
					<xsl:for-each select="$MultimodalTransport2">
						<xsl:if test="Doc:PortOfDschrge != '' ">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if>
					</xsl:for-each>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:for-each select="$MultimodalTransport2">
						<xsl:if test="Doc:PortOfDschrge != '' ">
							<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MultimodalTransport2_name"/>')</xsl:attribute>
						</xsl:if>
					</xsl:for-each>
					<xsl:value-of select="substring($MultimodalTransport2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
					<tr><td/></tr><!--
						<xsl:variable name="AirportName1Choice" select="$MultimodalTransport2/Doc:DprtureAirprt"/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice"/>
						</xsl:call-template>
						<xsl:variable name="AirportName1Choice_double" select="$MultimodalTransport2/Doc:DstnAirprt"/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice_double"/>
						</xsl:call-template>-->
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>AirCrrierNm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_AirCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_AirCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:AirCrrierNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>PortOfLoadng:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_PortOfLoadng</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_PortOfLoadng</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:PortOfLoadng"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PortOfDschrge:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_PortOfDschrge</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_PortOfDschrge</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:PortOfDschrge"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>VsslNm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_VsslNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_VsslNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:VsslNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PlcOfRct:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:PlcOfRct"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>PlcOfDlvry:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:PlcOfDlvry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>TakngInChrg:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_TakngInChrg</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_TakngInChrg</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:TakngInChrg"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>PlcOfFnlDstn:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfFnlDstn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfFnlDstn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:PlcOfFnlDstn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>TrnstLctn:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_TrnstLctn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_TrnstLctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:TrnstLctn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>RoadCrrierNm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_RoadCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_RoadCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:RoadCrrierNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>RailCrrierNm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_RailCrrierNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport2_name"/>_RailCrrierNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport2/Doc:RailCrrierNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <MultimodalTransport2> end ********** -->
	
	<!--  *********** point <Baseline1> Start ********** -->
	<xsl:template name="Baseline1">
		<xsl:param name="Baseline1"/>
		<xsl:variable name="Baseline1_name" select="name($Baseline1)"/>
		<xsl:variable name="baseLineDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Baseline1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="svccdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:SvcCd'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Baseline1_name"/>')</xsl:attribute>
					<xsl:value-of select="$baseLineDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Baseline1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						
						<xsl:element name="TD">
							<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							<xsl:value-of select="$svccdDesc"/>
							<xsl:element name="INPUT">
								<xsl:attribute name="type">text</xsl:attribute>
								<xsl:attribute name="name"><xsl:value-of select="$Baseline1_name"/>_SvcCd</xsl:attribute>
								<xsl:attribute name="id"><xsl:value-of select="$Baseline1_name"/>_SvcCd</xsl:attribute>
								<xsl:attribute name="class">CHAR_M</xsl:attribute>
								<xsl:attribute name="length">35</xsl:attribute>
								<xsl:attribute name="maxlength">35</xsl:attribute>
								<xsl:attribute name="value"><xsl:value-of select="$Baseline1/Doc:SvcCd"/></xsl:attribute>
							</xsl:element>
						</xsl:element>

						<xsl:variable name="DocumentIdentification1" select="$Baseline1/Doc:SubmitrBaselnId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="Docu_FullName">
								<xsl:value-of select="substring($Baseline1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
																				
						<xsl:variable name="DocumentIdentification7" select="$Baseline1/Doc:PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
						</xsl:call-template>	
						
						<xsl:variable name="BICIdentification1" select="$Baseline1/Doc:BuyrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BIC_FullName">
								<xsl:value-of select="substring($Baseline1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>				
						
						<xsl:variable name="BICIdentification1_double" select="$Baseline1/Doc:SellrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
							<xsl:with-param name="BIC_FullName">
								<xsl:value-of select="substring($Baseline1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>	
													
						<xsl:variable name="PartyIdentification4" select="$Baseline1/Doc:Buyr"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($Baseline1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>

						<xsl:variable name="PartyIdentification4_double" select="$Baseline1/Doc:Sellr"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4_double"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($Baseline1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="PartyIdentification4_three" select="$Baseline1/Doc:BllTo"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4_three"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($Baseline1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="PartyIdentification4_four" select="$Baseline1/Doc:ShipTo"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4_four"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($Baseline1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="PartyIdentification4_five" select="$Baseline1/Doc:Consgn"/>
						<xsl:call-template name="PartyIdentification4">
							<xsl:with-param name="PartyIdentification4" select="$PartyIdentification4_five"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($Baseline1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="LineItem1" select="$Baseline1/Doc:Goods"/>
						<xsl:call-template name="LineItem1">
							<xsl:with-param name="LineItem1" select="$LineItem1"/>
							<xsl:with-param name="Line1_FullName">
								<xsl:value-of select="substring($Baseline1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<!--
						<xsl:variable name="PaymentTerms1" select="$Baseline1/Doc:PmtTerms"/>
						<xsl:call-template name="PaymentTerms1">
							<xsl:with-param name="PaymentTerms1" select="$PaymentTerms1"/>
						</xsl:call-template>
						
						<xsl:variable name="SettlementTerms1" select="$Baseline1/Doc:SttlmTerms"/>
						<xsl:call-template name="SettlementTerms1">
							<xsl:with-param name="SettlementTerms1" select="$SettlementTerms1"/>
						</xsl:call-template>
						
						<xsl:variable name="RequiredSubmission1" select="$Baseline1/Doc:DataSetReqrd"/>
						<xsl:call-template name="RequiredSubmission1">
							<xsl:with-param name="RequiredSubmission1" select="$RequiredSubmission1"/>
							<xsl:with-param name="Requ1_FullName">
								<xsl:value-of select="substring($Baseline1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						-->
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Baseline1> end ********** -->	
	
	<!--  *********** point <LineItem1> Start ********** -->
	<xsl:template name="LineItem1">
		<xsl:param name="LineItem1"/>
		<xsl:param name="Line1_FullName"/>
		<xsl:variable name="LineItem1_name" select="name($LineItem1)"/>
		<xsl:variable name="Line1_FullName_fox" select="$Line1_FullName"/>

		<xsl:variable name="goods">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$LineItem1_name"/>
			</xsl:call-template>
		</xsl:variable>
		
		<xsl:variable name="goodsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:GoodsDesc'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PrtlShipmntDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PrtlShipmnt'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="TrnsShipmntDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:TrnsShipmnt'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="LatstShipmntDtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:LatstShipmntDt'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="LineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:LineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="TtlNetAmtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:TtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>')</xsl:attribute>
					<xsl:value-of select="$goods"/>
				</a>
			</xsl:element>
		</tr>
		
		<tr>			
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$goodsDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:GoodsDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>							
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PrtlShipmntDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_PrtlShipmnt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_PrtlShipmnt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:PrtlShipmnt"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="img">
									<xsl:attribute name="src">horizontal.gif</xsl:attribute>
									<xsl:attribute name="width">130</xsl:attribute>
									<xsl:attribute name="height">0</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TrnsShipmntDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_TrnsShipmnt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_TrnsShipmnt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:TrnsShipmnt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LatstShipmntDtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_LatstShipmntDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_LatstShipmntDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:LatstShipmntDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LineItmsTtlAmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:LineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TtlNetAmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:TtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						
						<xsl:variable name="LineItemDetails1" select="$LineItem1/Doc:LineItmDtls"/>
						<xsl:call-template name="LineItemDetails1">
							<xsl:with-param name="LineItemDetails1" select="$LineItemDetails1"/>
							<xsl:with-param name="LineItem1_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="TransportMeans1Choice" select="$LineItem1/Doc:RtgSummry"/>
						<xsl:call-template name="TransportMeans1Choice">
							<xsl:with-param name="TransportMeans1Choice" select="$TransportMeans1Choice"/>
							<xsl:with-param name="RtgSummry_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="Incoterms1" select="$LineItem1/Doc:Incotrms"/>
						<xsl:call-template name="Incoterms1">
							<xsl:with-param name="Incoterms1" select="$Incoterms1"/>
							<xsl:with-param name="Inco1_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="Charge12" select="$LineItem1/Doc:FrghtChrgs"/>
						<xsl:call-template name="Charge12">
							<xsl:with-param name="Charge12" select="$Charge12"/>
						</xsl:call-template>
						
						<xsl:variable name="Adjustment1" select="$LineItem1/Doc:Adjstmnt"/>
						<xsl:call-template name="Adjustment1">
							<xsl:with-param name="Adjustment1" select="$Adjustment1"/>
							<xsl:with-param name="Adjust1_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="Tax9" select="$LineItem1/Doc:Tax"/>
						<xsl:call-template name="Tax9">
							<xsl:with-param name="Tax9" select="$Tax9"/>
						</xsl:call-template>
						
						<xsl:variable name="UserDefinedInformation1" select="$LineItem1/Doc:BuyrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1"/>
							<xsl:with-param name="User_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="UserDefinedInformation1_double" select="$LineItem1/Doc:SellrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1_double"/>
							<xsl:with-param name="User_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>		
	</xsl:template>
	<!--  *********** point <LineItem1> end ********** -->
	
	<!--  *********** point <LineItemDetails1> Start ********** -->
	<xsl:template name="LineItemDetails1">
		<xsl:param name="LineItemDetails1"/>
		<xsl:param name="LineItem1_FullName"/>
		<xsl:variable name="LineItemDetails1_name" select="name($LineItemDetails1)"/>
		<xsl:variable name="LineItem1_FullName_fox" select="$LineItem1_FullName"/>
		
		<xsl:variable name="LineItmDtlsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$LineItemDetails1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="LineItmNbDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:LineItmNb'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PdctNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PdctNm'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PdctOrgnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PdctOrgn'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="LatstShipmntDtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:LatstShipmntDt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails1_name"/>')</xsl:attribute>
					<xsl:value-of select="$LineItmDtlsDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails1_name"/></xsl:attribute>
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
											<xsl:value-of select="$LineItmNbDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails1_name"/>_LineItmNb</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails1_name"/>_LineItmNb</xsl:attribute>
												<xsl:attribute name="class">CHAR_M</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails1/Doc:LineItmNb"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:value-of select="$PdctNmDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="class">CHAR_M</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails1/Doc:PdctNm"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
									</tr>
									<tr>
										<xsl:element name="TD">
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:value-of select="$PdctOrgnDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="class">CHAR_M</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails1/Doc:PdctNm"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:value-of select="$LatstShipmntDtDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="class">CHAR_M</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails1/Doc:PdctNm"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
									</tr>
									<tr>
										<xsl:element name="TD">	
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:text>TtlAmt:</xsl:text>
										</xsl:element>
										<xsl:element name="TD">	
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails1_name"/>_TtlAmt</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails1_name"/>_TtlAmt</xsl:attribute>
												<xsl:attribute name="class">CHAR_M</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails1/Doc:TtlAmt"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
										<xsl:element name="TD">	
										</xsl:element>
										<xsl:element name="TD">	
										</xsl:element>
									</tr>
								</table>
							</xsl:element>
						</tr>
						
						<xsl:variable name="Quantity1" select="$LineItemDetails1/Doc:Qty"/>
						<xsl:call-template name="Quantity1">
							<xsl:with-param name="Quantity1" select="$Quantity1"/>
						</xsl:call-template>
						
						<xsl:variable name="PercentageTolerance1" select="$LineItemDetails1/Doc:QtyTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1"/>
						</xsl:call-template>
						
						<xsl:variable name="UnitPrice7_one" select="$LineItemDetails1/Doc:UnitPric"/>
						<xsl:call-template name="UnitPrice7">
							<xsl:with-param name="UnitPrice7" select="$UnitPrice7_one"/>
						</xsl:call-template>
						
						<xsl:variable name="PercentageTolerance1_double" select="$LineItemDetails1/Doc:PricTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1_double"/>
						</xsl:call-template>

						<xsl:variable name="ProductIdentifier1Choice" select="$LineItemDetails1/Doc:PdctIdr"/>
						<xsl:call-template name="ProductIdentifier1Choice">
							<xsl:with-param name="ProductIdentifier1Choice" select="$ProductIdentifier1Choice"/>
						</xsl:call-template>

						<xsl:variable name="ProductCharacteristics1Choice" select="$LineItemDetails1/Doc:PdctChrtcs"/>
						<xsl:call-template name="ProductCharacteristics1Choice">
							<xsl:with-param name="ProductCharacteristics1Choice" select="$ProductCharacteristics1Choice"/>
						</xsl:call-template>
						
						<xsl:variable name="ProductCategory1Choice" select="$LineItemDetails1/Doc:PdctCtgy"/>
						<xsl:call-template name="ProductCategory1Choice">
							<xsl:with-param name="ProductCategory1Choice" select="$ProductCategory1Choice"/>
						</xsl:call-template>

						<xsl:variable name="TransportMeans1Choice" select="$LineItemDetails1/Doc:RtgSummry"/>
						<xsl:call-template name="TransportMeans1Choice">
							<xsl:with-param name="TransportMeans1Choice" select="$TransportMeans1Choice"/>
							<xsl:with-param name="RtgSummry_FullName">
								<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="Incoterms1" select="$LineItemDetails1/Doc:Incotrms"/>
						<xsl:call-template name="Incoterms1">
							<xsl:with-param name="Incoterms1" select="$Incoterms1"/>
							<xsl:with-param name="Inco1_FullName">
								<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="Adjustment1" select="$LineItemDetails1/Doc:Adjstmnt"/>
						<xsl:call-template name="Adjustment1">
							<xsl:with-param name="Adjustment1" select="$Adjustment1"/>
							<xsl:with-param name="Adjust1_FullName">
								<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItemDetails1> end ********** -->
	
	<!--  *********** point <PercentageTolerance1> start ********** -->
	<xsl:template name="PercentageTolerance1">
		<xsl:param name="PercentageTolerance1"/>
		<xsl:variable name="PercentageTolerance1_name" select="name($PercentageTolerance1)"/>
		
		<xsl:variable name="QtyTlrnceDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PercentageTolerance1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PlusPctDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PlusPct'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="MnsPctDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:MnsPct'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PercentageTolerance1_name"/>')</xsl:attribute>
					<xsl:value-of select="$QtyTlrnceDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PercentageTolerance1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">								
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$PlusPctDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PercentageTolerance1_name"/>_PlusPct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PercentageTolerance1_name"/>_PlusPct</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PercentageTolerance1/Doc:PlusPct"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">								
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$MnsPctDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PercentageTolerance1_name"/>_MnsPct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PercentageTolerance1_name"/>_MnsPct</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PercentageTolerance1/Doc:MnsPct"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DocumentIdentification3> end ********** -->
	
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
	
	<!--  *********** point <SingleTransport1> start ********** -->
	<xsl:template name="SingleTransport1">
		<xsl:param name="SingleTransport1"/>
		<xsl:param name="IndvTrnsprt_FullName"/>
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

						<xsl:variable name="TransportByAir1" select="$SingleTransport1/Doc:TrnsprtByAir"/>
						<xsl:call-template name="TransportByAir1">
							<xsl:with-param name="TransportByAir1" select="$TransportByAir1"/>
							<xsl:with-param name="TrnsprtByAir_FullName">
								<xsl:value-of select="$IndvTrnsprt_FullName_fox"/>_<xsl:value-of select="$SingleTransport1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="TransportBySea1" select="$SingleTransport1/Doc:TrnsprtBySea"/>
						<xsl:call-template name="TransportBySea1">
							<xsl:with-param name="TransportBySea1" select="$TransportBySea1"/>
							<xsl:with-param name="TrnsprtBySea_FullName">
								<xsl:value-of select="$IndvTrnsprt_FullName_fox"/>_<xsl:value-of select="$SingleTransport1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="TransportByRoad1" select="$SingleTransport1/Doc:TrnsprtByRoad"/>
						<xsl:call-template name="TransportByRoad1">
							<xsl:with-param name="TransportByRoad1" select="$TransportByRoad1"/>
							<xsl:with-param name="TrnsprtByRoad_FullName">
								<xsl:value-of select="$IndvTrnsprt_FullName_fox"/>_<xsl:value-of select="$SingleTransport1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="TransportByRail1" select="$SingleTransport1/Doc:TrnsprtByRail"/>
						<xsl:call-template name="TransportByRoad1">
							<xsl:with-param name="TransportByRoad1" select="$TransportByRail1"/>
							<xsl:with-param name="TrnsprtByRoad_FullName">
								<xsl:value-of select="$IndvTrnsprt_FullName_fox"/>_<xsl:value-of select="$SingleTransport1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <SingleTransport1> end ********** -->
	
	<!--  *********** point <TransportByAir1> start ********** -->
	<xsl:template name="TransportByAir1">
		<xsl:param name="TransportByAir1"/>
		<xsl:param name="TrnsprtByAir_FullName"/>
		<xsl:variable name="TransportByAir1_name" select="name($TransportByAir1)"/>
		<xsl:variable name="TrnsprtByAir_FullName_fox" select="$TrnsprtByAir_FullName"/>
		
		<xsl:variable name="TrnsprtByAirDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransportByAir1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<!--<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportByAir1_name"/>')</xsl:attribute>-->
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TrnsprtByAir_FullName_fox"/>_<xsl:value-of select="$TransportByAir1_name"/>')</xsl:attribute>
					<xsl:value-of select="$TrnsprtByAirDesc"/>
				</a>
			</xsl:element>
		</tr>
		
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<!--<xsl:attribute name="id"><xsl:value-of select="$TransportByAir1_name"/></xsl:attribute>-->
					<xsl:attribute name="id"><xsl:value-of select="$TrnsprtByAir_FullName_fox"/>_<xsl:value-of select="$TransportByAir1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
					
						<xsl:variable name="AirportName1Choice" select="$TransportByAir1/Doc:DprtureAirprt"/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice"/>
							<xsl:with-param name="DprtureAirprt_FullName">
								<xsl:value-of select="$TrnsprtByAir_FullName_fox"/>_<xsl:value-of select="$TransportByAir1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="AirportName1Choice_double" select="$TransportByAir1/Doc:DstnAirprt"/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice_double"/>
							<xsl:with-param name="DprtureAirprt_FullName">
								<xsl:value-of select="$TrnsprtByAir_FullName_fox"/>_<xsl:value-of select="$TransportByAir1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportByAir1> end ********** -->
	
	<!--  *********** point <TransportBySea1> start ********** -->
	<xsl:template name="TransportBySea1">
		<xsl:param name="TransportBySea1"/>
		<xsl:param name="TrnsprtBySea_FullName"/>
		<xsl:variable name="TransportBySea1_name" select="name($TransportBySea1)"/>
		<xsl:variable name="TrnsprtBySea_FullName_fox" select="$TrnsprtBySea_FullName"/>
		
		<xsl:variable name="TrnsprtBySeaDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransportBySea1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PortOfLoadngDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PortOfLoadng'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PortOfDschrgeDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PortOfDschrge'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<!--<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportBySea1_name"/>')</xsl:attribute>-->
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TrnsprtBySea_FullName_fox"/>_<xsl:value-of select="$TransportBySea1_name"/>')</xsl:attribute>
					<xsl:value-of select="$TrnsprtBySeaDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<!--<xsl:attribute name="id"><xsl:value-of select="$TransportBySea1_name"/></xsl:attribute>-->
					<xsl:attribute name="id"><xsl:value-of select="$TrnsprtBySea_FullName_fox"/>_<xsl:value-of select="$TransportBySea1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							<xsl:attribute name="height">25</xsl:attribute>
							<xsl:value-of select="$PortOfLoadngDesc"/>
							<xsl:element name="INPUT">
								<xsl:attribute name="type">text</xsl:attribute>
								<xsl:attribute name="name"><xsl:value-of select="$TransportBySea1_name"/>_PortOfLoadng</xsl:attribute>
								<xsl:attribute name="id"><xsl:value-of select="$TransportBySea1_name"/>_PortOfLoadng</xsl:attribute>
								<xsl:attribute name="class">CHAR_M</xsl:attribute>
								<xsl:attribute name="length">35</xsl:attribute>
								<xsl:attribute name="maxlength">35</xsl:attribute>
								<xsl:attribute name="value"><xsl:value-of select="$TransportBySea1/Doc:PortOfLoadng"/></xsl:attribute>
							</xsl:element>
						</xsl:element>
						<xsl:element name="TD">
							<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							<xsl:attribute name="height">25</xsl:attribute>
							<xsl:value-of select="$PortOfDschrgeDesc"/>
							<xsl:element name="INPUT">
								<xsl:attribute name="type">text</xsl:attribute>
								<xsl:attribute name="name"><xsl:value-of select="$TransportBySea1_name"/>_PortOfDschrge</xsl:attribute>
								<xsl:attribute name="id"><xsl:value-of select="$TransportBySea1_name"/>_PortOfDschrge</xsl:attribute>
								<xsl:attribute name="class">CHAR_M</xsl:attribute>
								<xsl:attribute name="length">35</xsl:attribute>
								<xsl:attribute name="maxlength">35</xsl:attribute>
								<xsl:attribute name="value"><xsl:value-of select="$TransportBySea1/Doc:PortOfDschrge"/></xsl:attribute>
							</xsl:element>
						</xsl:element>
					</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportBySea1> end ********** -->
	
	<!--  *********** point <TransportByRoad1> start ********** -->
	<xsl:template name="TransportByRoad1">
		<xsl:param name="TransportByRoad1"/>
		<xsl:param name="TrnsprtByRoad_FullName"/>
		<xsl:variable name="TransportByRoad1_name" select="name($TransportByRoad1)"/>
		<xsl:variable name="TrnsprtByRoad_FullName_fox" select="$TrnsprtByRoad_FullName"/>
		
		<xsl:variable name="TrnsprtByRoadDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransportByRoad1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PlcOfRctDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PlcOfRct'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PlcOfDlvryDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PlcOfDlvry'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<!--<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportByRoad1_name"/>')</xsl:attribute>-->
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TrnsprtByRoad_FullName_fox"/>_<xsl:value-of select="$TransportByRoad1_name"/>')</xsl:attribute>
					<xsl:value-of select="$TrnsprtByRoadDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<!--<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad1_name"/></xsl:attribute>-->
					<xsl:attribute name="id"><xsl:value-of select="$TrnsprtByRoad_FullName_fox"/>_<xsl:value-of select="$TransportByRoad1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%%" border="0" cellpadding="0" cellspacing="0" align="right">
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							<xsl:attribute name="height">25</xsl:attribute>
							<xsl:value-of select="$PlcOfRctDesc"/>
							<xsl:element name="INPUT">
								<xsl:attribute name="type">text</xsl:attribute>
								<xsl:attribute name="name"><xsl:value-of select="$TransportByRoad1_name"/>_PlcOfRct</xsl:attribute>
								<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad1_name"/>_PlcOfRct</xsl:attribute>
								<xsl:attribute name="class">CHAR_M</xsl:attribute>
								<xsl:attribute name="length">35</xsl:attribute>
								<xsl:attribute name="maxlength">35</xsl:attribute>
								<xsl:attribute name="value"><xsl:value-of select="$TransportByRoad1/Doc:PlcOfRct"/></xsl:attribute>
							</xsl:element>
						</xsl:element>
						<xsl:element name="TD">
							<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							<xsl:attribute name="height">25</xsl:attribute>
							<xsl:value-of select="$PlcOfDlvryDesc"/>
							<xsl:element name="INPUT">
								<xsl:attribute name="type">text</xsl:attribute>
								<xsl:attribute name="name"><xsl:value-of select="$TransportByRoad1_name"/>_PlcOfDlvry</xsl:attribute>
								<xsl:attribute name="id"><xsl:value-of select="$TransportByRoad1_name"/>_PlcOfDlvry</xsl:attribute>
								<xsl:attribute name="class">CHAR_M</xsl:attribute>
								<xsl:attribute name="length">35</xsl:attribute>
								<xsl:attribute name="maxlength">35</xsl:attribute>
								<xsl:attribute name="value"><xsl:value-of select="$TransportByRoad1/Doc:PlcOfDlvry"/></xsl:attribute>
							</xsl:element>
						</xsl:element>
					</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportByRoad1> end ********** -->
	
	<!--  *********** point <TransportByRail1> start ********** -->
	<!--
	<xsl:template name="TransportByRail1">
		<xsl:param name="TransportByRail1"/>
		<xsl:variable name="TransportByRail1_name" select="name($TransportByRail1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportByRail1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($TransportByRail1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportByRail1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							<xsl:attribute name="height">25</xsl:attribute>
							<xsl:text>PlcOfRct:</xsl:text>
							<xsl:element name="INPUT">
								<xsl:attribute name="type">text</xsl:attribute>
								<xsl:attribute name="name"><xsl:value-of select="$TransportByRail1_name"/>_PlcOfRct</xsl:attribute>
								<xsl:attribute name="id"><xsl:value-of select="$TransportByRail1_name"/>_PlcOfRct</xsl:attribute>
								<xsl:attribute name="class">CHAR_M</xsl:attribute>
								<xsl:attribute name="length">35</xsl:attribute>
								<xsl:attribute name="maxlength">35</xsl:attribute>
								<xsl:attribute name="value"><xsl:value-of select="$TransportByRail1/Doc:PlcOfRct"/></xsl:attribute>
							</xsl:element>
						</xsl:element>
						<xsl:element name="TD">
							<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							<xsl:attribute name="height">25</xsl:attribute>
							<xsl:text>PlcOfDlvry:</xsl:text>
							<xsl:element name="INPUT">
								<xsl:attribute name="type">text</xsl:attribute>
								<xsl:attribute name="name"><xsl:value-of select="$TransportByRail1_name"/>_PlcOfDlvry</xsl:attribute>
								<xsl:attribute name="id"><xsl:value-of select="$TransportByRail1_name"/>_PlcOfDlvry</xsl:attribute>
								<xsl:attribute name="class">CHAR_M</xsl:attribute>
								<xsl:attribute name="length">35</xsl:attribute>
								<xsl:attribute name="maxlength">35</xsl:attribute>
								<xsl:attribute name="value"><xsl:value-of select="$TransportByRail1/Doc:PlcOfDlvry"/></xsl:attribute>
							</xsl:element>
						</xsl:element>
					</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>-->
	<!--  *********** point <TransportByRail1> end ********** -->
	
	<!--  *********** point <MultimodalTransport1> start ********** -->
	<xsl:template name="MultimodalTransport1">
		<xsl:param name="MultimodalTransport1"/>
		<xsl:param name="MltmdlTrnsprt_FullName"/>
		<xsl:variable name="MultimodalTransport1_name" select="name($MultimodalTransport1)"/>
		<xsl:variable name="MltmdlTrnsprt_FullName_fox" select="$MltmdlTrnsprt_FullName"/>

		<xsl:variable name="MltmdlTrnsprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$MultimodalTransport1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PortOfLoadngDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PortOfLoadng'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PortOfDschrgeDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PortOfDschrge'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PlcOfRctDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PlcOfRct'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PlcOfDlvryDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PlcOfDlvry'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="TakngInChrgDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:TakngInChrg'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PlcOfFnlDstnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PlcOfFnlDstn'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<!--<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MultimodalTransport1_name"/>')</xsl:attribute>-->
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MltmdlTrnsprt_FullName_fox"/>_<xsl:value-of select="$MultimodalTransport1_name"/>')</xsl:attribute>
					<xsl:value-of select="$MltmdlTrnsprtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<!--<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/></xsl:attribute>-->
					<xsl:attribute name="id"><xsl:value-of select="$MltmdlTrnsprt_FullName_fox"/>_<xsl:value-of select="$MultimodalTransport1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">

						<tr>
							<xsl:element name="TD">	
								<xsl:attribute name="width">95%</xsl:attribute>
								<xsl:attribute name="align">right</xsl:attribute>
								<xsl:element name="DIV">
									<xsl:attribute name="style">overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
									<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$PortOfLoadngDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_PortOfLoadng</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_PortOfLoadng</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:PortOfLoadng"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$PortOfDschrgeDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_PortOfDschrge</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_PortOfDschrge</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:PortOfDschrge"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$PlcOfRctDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfRct</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfRct</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:PlcOfRct"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$PlcOfDlvryDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfDlvry</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfDlvry</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:PlcOfDlvry"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$TakngInChrgDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_TakngInChrg</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_TakngInChrg</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:TakngInChrg"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$PlcOfFnlDstnDesc"/>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfFnlDstn</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport1_name"/>_PlcOfFnlDstn</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$MultimodalTransport1/Doc:PlcOfFnlDstn"/></xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
									</table>
								</xsl:element>
							</xsl:element>
						</tr>

						<xsl:variable name="AirportName1Choice" select="$MultimodalTransport1/Doc:DprtureAirprt"/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice"/>
							<xsl:with-param name="DprtureAirprt_FullName">
								<xsl:value-of select="$MltmdlTrnsprt_FullName_fox"/>_<xsl:value-of select="$MultimodalTransport1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="AirportName1Choice_double" select="$MultimodalTransport1/Doc:DstnAirprt"/>
						<xsl:call-template name="AirportName1Choice">
							<xsl:with-param name="AirportName1Choice" select="$AirportName1Choice_double"/>
							<xsl:with-param name="DprtureAirprt_FullName">
								<xsl:value-of select="$MltmdlTrnsprt_FullName_fox"/>_<xsl:value-of select="$MultimodalTransport1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <MultimodalTransport1> end ********** -->
	
	<!--  *********** point <Incoterms1> Start ********** -->
	<xsl:template name="Incoterms1">
		<xsl:param name="Incoterms1"/>
		<xsl:param name="Inco1_FullName"/>
		<xsl:variable name="Incoterms1_name" select="name($Incoterms1)"/>
		<xsl:variable name="Inco1_FullName_fox" select="$Inco1_FullName"/>
		
		<xsl:variable name="IncotrmsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Incoterms1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="OthrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Othr'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="CdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Cd'"/>
			</xsl:call-template>
		</xsl:variable>
		
		<xsl:variable name="LctnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Lctn'"/>
			</xsl:call-template>
		</xsl:variable>		

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Inco1_FullName_fox"/>_<xsl:value-of select="$Incoterms1_name"/>')</xsl:attribute>
					<xsl:value-of select="$IncotrmsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Inco1_FullName_fox"/>_<xsl:value-of select="$Incoterms1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Cd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Cd_check</xsl:attribute>
									<xsl:for-each select="$Incoterms1">
										<xsl:if test="Doc:Cd != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$CdDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Cd</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Cd</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incoterms1/Doc:Cd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Cd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Cd_check</xsl:attribute>
									<xsl:for-each select="$Incoterms1">
										<xsl:if test="Doc:Othr != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:value-of select="$OthrDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Othr</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Othr</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incoterms1/Doc:Othr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>	
							<xsl:element name="TD">
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LctnDesc"/>							
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Incoterms1_name"/>_Lctn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Incoterms1_name"/>_Lctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incoterms1/Doc:Lctn"/></xsl:attribute>
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
	<!--  *********** point <Incoterms1> end ********** -->
	
	<!--  *********** point <RequiredSubmission1> Start ********** -->
	<xsl:template name="RequiredSubmission1">
		<xsl:param name="RequiredSubmission1"/>
		<xsl:param name="Requ1_FullName"/>
		<xsl:variable name="RequiredSubmission1_name" select="name($RequiredSubmission1)"/>
		<xsl:variable name="Requ1_FullName_fox" select="$Requ1_FullName"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Requ1_FullName_fox"/>_<xsl:value-of select="$RequiredSubmission1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($RequiredSubmission1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Requ1_FullName_fox"/>_<xsl:value-of select="$RequiredSubmission1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>LatstMtchDt:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission1_name"/>_LatstMtchDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission1_name"/>_LatstMtchDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission1/Doc:LatstMtchDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>ReqrdComrclDataSet:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission1_name"/>_ReqrdComrclDataSet</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission1_name"/>_ReqrdComrclDataSet</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission1/Doc:ReqrdComrclDataSet"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>ReqrdTrnsprtDataSet:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission1_name"/>_ReqrdTrnsprtDataSet</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission1_name"/>_ReqrdTrnsprtDataSet</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission1/Doc:ReqrdTrnsprtDataSet"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="BICIdentification1" select="$RequiredSubmission1/Doc:Submitr"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BIC_FullName">
								<xsl:value-of select="$Requ1_FullName_fox"/>_<xsl:value-of select="$RequiredSubmission1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <RequiredSubmission1> end ********** -->
	
	<!--  *********** point <ContactIdentification1> Start ********** -->
	<xsl:template name="ContactIdentification1">
		<xsl:param name="ContactIdentification1"/>
		<xsl:variable name="ContactIdentification1_name" select="name($ContactIdentification1)"/>
		
		<xsl:variable name="CtctPrsnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ContactIdentification1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="NmPrfxDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:NmPrfx'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="GvnNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:GvnNm'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="RoleDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Role'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PhneNbDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PhneNb'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="FaxNbDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:FaxNb'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="EmailAdrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:EmailAdr'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ContactIdentification1_name"/>')</xsl:attribute>
					<xsl:value-of select="$CtctPrsnDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="75%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$NmDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification1_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification1_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification1/Doc:Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$NmPrfxDesc"/>
							</xsl:element>	
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification1_name"/>_NmPrfx</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification1_name"/>_NmPrfx</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification1/Doc:NmPrfx"/></xsl:attribute>
								</xsl:element>
							</xsl:element>		
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$GvnNmDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification1_name"/>_GvnNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification1_name"/>_GvnNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification1/Doc:GvnNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>		
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$RoleDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification1_name"/>_Role</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification1_name"/>_Role</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification1/Doc:Role"/></xsl:attribute>
								</xsl:element>
							</xsl:element>				
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$PhneNbDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification1_name"/>_PhneNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification1_name"/>_PhneNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification1/Doc:PhneNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>			
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$FaxNbDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification1_name"/>_FaxNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification1_name"/>_FaxNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification1/Doc:FaxNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$EmailAdrDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ContactIdentification1_name"/>_EmailAdr</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ContactIdentification1_name"/>_EmailAdr</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ContactIdentification1/Doc:EmailAdr"/></xsl:attribute>
								</xsl:element>
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
	<!--  *********** point <ContactIdentification1> end ********** -->
	
	<!--  *********** point <DocumentIdentification2> Start ********** -->
	<xsl:template name="DocumentIdentification2">
		<xsl:param name="DocumentIdentification2"/>
		<xsl:variable name="DocumentIdentification2_name" select="name($DocumentIdentification2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DocumentIdentification2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($DocumentIdentification2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Id:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification2_name"/>_Id</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification2_name"/>_Id</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification2/Doc:Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Vrsn:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification2_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification2_name"/>_Vrsn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification2/Doc:Vrsn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>		
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Tp:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification2_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification2_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification2/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
							</tr>
							<xsl:variable name="BICIdentification1" select="$DocumentIdentification2/Doc:Submitr"/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
								<xsl:with-param name="BIC_FullName">
									<xsl:value-of select="$DocumentIdentification2_name"/>
								</xsl:with-param>
							</xsl:call-template>
							<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>DocIndx:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DocumentIdentification2_name"/>_DocIndx</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DocumentIdentification2_name"/>_DocIndx</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DocumentIdentification2/Doc:DocIndx"/></xsl:attribute>
								</xsl:element>
							</xsl:element>						
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DocumentIdentification2> end ********** -->
	
	<!--  *********** point <ReportType1> Start ********** -->
	<xsl:template name="ReportType1">
		<xsl:param name="ReportType1"/>
		<xsl:variable name="ReportType1_name" select="name($ReportType1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ReportType1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ReportType1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ReportType1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Tp:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportType1_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportType1_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportType1/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ReportType1> end ********** -->

	<!--  *********** point <ReportType2> Start ********** -->
	<xsl:template name="ReportType2">
		<xsl:param name="ReportType2"/>
		<xsl:variable name="ReportType2_name" select="name($ReportType2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ReportType2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ReportType2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ReportType2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Tp:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportType2_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportType2_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportType2/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ReportType2> end ********** -->
	
	<!--  *********** point <ReportType3> Start ********** -->
	<xsl:template name="ReportType3">
		<xsl:param name="ReportType3"/>
		<xsl:variable name="ReportType3_name" select="name($ReportType3)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ReportType3_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ReportType3_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ReportType3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Tp:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportType3_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportType3_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportType3/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ReportType3> end ********** -->
	
	<!--  *********** point <MisMatchReport1> Start ********** -->
	<xsl:template name="MisMatchReport1">
		<xsl:param name="MisMatchReport1"/>
		<xsl:variable name="MisMatchReport1_name" select="name($MisMatchReport1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MisMatchReport1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($MisMatchReport1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$MisMatchReport1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>NbOfMisMtchs:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MisMatchReport1_name"/>_NbOfMisMtchs</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MisMatchReport1_name"/>_NbOfMisMtchs</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MisMatchReport1/Doc:NbOfMisMtchs"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
						</tr>
							<xsl:variable name="ValidationResult2" select="$MisMatchReport1/Doc:MisMtchInf"/>
							<xsl:call-template name="ValidationResult2">
								<xsl:with-param name="ValidationResult2" select="$ValidationResult2"/>
							</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <MisMatchReport1> end ********** -->
	
	<!--  *********** point <ValidationResult2> Start ********** -->
	<xsl:template name="ValidationResult2">
		<xsl:param name="ValidationResult2"/>
		<xsl:variable name="ValidationResult2_name" select="name($ValidationResult2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ValidationResult2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ValidationResult2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ValidationResult2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>SeqNb:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ValidationResult2_name"/>_SeqNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ValidationResult2_name"/>_SeqNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ValidationResult2/Doc:SeqNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>RuleId:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ValidationResult2_name"/>_RuleId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ValidationResult2_name"/>_RuleId</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ValidationResult2/Doc:RuleId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>RuleDesc:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ValidationResult2_name"/>_RuleDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ValidationResult2_name"/>_RuleDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ValidationResult2/Doc:RuleDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
						</tr>
							<xsl:variable name="ElementIdentification1" select="$ValidationResult2/Doc:MisMtchdElmt"/>
							<xsl:call-template name="ElementIdentification1">
								<xsl:with-param name="ElementIdentification1" select="$ElementIdentification1"/>
							</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ValidationResult2> end ********** -->
	
	<!--  *********** point <ElementIdentification1> Start ********** -->
	<xsl:template name="ElementIdentification1">
		<xsl:param name="ElementIdentification1"/>
		<xsl:variable name="ElementIdentification1_name" select="name($ElementIdentification1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ElementIdentification1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ElementIdentification1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>DocIndx:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification1_name"/>_DocIndx</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification1_name"/>_DocIndx</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification1/Doc:DocIndx"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>ElmtPth:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification1_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification1_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification1/Doc:ElmtPth"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>ElmtNm:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification1_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification1_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification1/Doc:ElmtNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>ElmtVal:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification1_name"/>_ElmtVal</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification1_name"/>_ElmtVal</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification1/Doc:ElmtVal"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ValidationResult2> end ********** -->
	
	<!--  *********** point <ElementIdentification2> Start ********** -->
	<xsl:template name="ElementIdentification2">
		<xsl:param name="ElementIdentification2"/>
		<xsl:variable name="ElementIdentification2_name" select="name($ElementIdentification2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ElementIdentification2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ElementIdentification2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>ElmtPth:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification2_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification2_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification2/Doc:ElmtPth"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>ElmtNm:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification2_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification2_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification2/Doc:ElmtPth"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>ElmtVal:</xsl:text>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification2_name"/>_ElmtVal</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification2_name"/>_ElmtVal</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification2/Doc:ElmtVal"/></xsl:attribute>
								</xsl:element>
							</xsl:element>	
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ElementIdentification2> end ********** -->

	<!--  *********** point <Limit1> start ********** -->
	<xsl:template name="Limit1">
		<xsl:param name="Limit1"/>
		<xsl:variable name="Limit1_name" select="name($Limit1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Limit1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($Limit1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Limit1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>Cur:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Limit1_name"/>_Cur</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Limit1_name"/>_Cur</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Limit1/Doc:Cur"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>Lmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Limit1_name"/>_Lmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Limit1_name"/>_Lmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Limit1/Doc:Lmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Limit1> end ********** -->
	
	<!--  *********** point <ActivityReportItems1> start ********** -->
	<xsl:template name="ActivityReportItems1">
		<xsl:param name="ActivityReportItems1"/>
		<xsl:variable name="ActivityReportItems1_name" select="name($ActivityReportItems1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ActivityReportItems1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ActivityReportItems1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ActivityReportItems1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>TxId:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ActivityReportItems1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ActivityReportItems1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ActivityReportItems1/Doc:TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification5" select="$ActivityReportItems1/Doc:UsrTxRef"/>
						<xsl:call-template name="DocumentIdentification5">
							<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
						</xsl:call-template>
					
						<xsl:variable name="BICIdentification1" select="$ActivityReportItems1/Doc:RptdNtty"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
						</xsl:call-template>
						
						<xsl:variable name="ActivityDetails1" select="$ActivityReportItems1/Doc:RptdItm"/>
						<xsl:call-template name="ActivityDetails1">
							<xsl:with-param name="ActivityDetails1" select="$ActivityDetails1"/>
						</xsl:call-template>
						
						<xsl:variable name="PendingActivity1" select="$ActivityReportItems1/Doc:PdgReqForActn"/>
						<xsl:call-template name="PendingActivity1">
							<xsl:with-param name="PendingActivity1" select="$PendingActivity1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ActivityReportItems1> end ********** -->
	
	<!--  *********** point <ActivityDetails1> start ********** -->
	<xsl:template name="ActivityDetails1">
		<xsl:param name="ActivityDetails1"/>
		<xsl:variable name="ActivityDetails1_name" select="name($ActivityDetails1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ActivityDetails1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ActivityDetails1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ActivityDetails1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>DtTm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ActivityDetails1_name"/>_DtTm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ActivityDetails1_name"/>_DtTm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ActivityDetails1/Doc:DtTm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Activity1" select="$ActivityDetails1/Doc:Actvty"/>
						<xsl:call-template name="Activity1">
							<xsl:with-param name="Activity1" select="$Activity1"/>
						</xsl:call-template>
						
						<xsl:variable name="BICIdentification1" select="$ActivityDetails1/Doc:Initr"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Limit1> end ********** -->
	
	<!--  *********** point <Activity1> start ********** -->
	<xsl:template name="Activity1">
		<xsl:param name="Activity1"/>
		<xsl:variable name="Activity1_name" select="name($Activity1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Activity1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($Activity1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Activity1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>MsgNm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Activity1_name"/>_MsgNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Activity1_name"/>_MsgNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Activity1/Doc:MsgNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>Desc:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Activity1_name"/>_Desc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Activity1_name"/>_Desc</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Activity1/Doc:Desc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Activity1> end ********** -->
	
	<!--  *********** point <ComparisonResult1> start ********** -->
	<xsl:template name="ComparisonResult1">
		<xsl:param name="ComparisonResult1"/>
		<xsl:variable name="ComparisonResult1_name" select="name($ComparisonResult1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ComparisonResult1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ComparisonResult1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>ElmtSeqNb:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ComparisonResult1_name"/>_ElmtSeqNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult1_name"/>_ElmtSeqNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ComparisonResult1/Doc:ElmtSeqNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>ElmtPth:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ComparisonResult1_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult1_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ComparisonResult1/Doc:ElmtPth"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>ElmtNm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ComparisonResult1_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult1_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ComparisonResult1/Doc:ElmtNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Replacement1" select="$ComparisonResult1/Doc:Rplcmnt"/>
						<xsl:call-template name="Replacement1">
							<xsl:with-param name="Replacement1" select="$Replacement1"/>
						</xsl:call-template>
						
						<xsl:variable name="Deletion1" select="$ComparisonResult1/Doc:Deltn"/>
						<xsl:call-template name="Deletion1">
							<xsl:with-param name="Deletion1" select="$Deletion1"/>
						</xsl:call-template>
						
						<xsl:variable name="Addition1" select="$ComparisonResult1/Doc:Addtn"/>
						<xsl:call-template name="Addition1">
							<xsl:with-param name="Addition1" select="$Addition1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ComparisonResult1> end ********** -->
	
	<!--  *********** point <Replacement1> start ********** -->
	<xsl:template name="Replacement1">
		<xsl:param name="Replacement1"/>
		<xsl:variable name="Replacement1_name" select="name($Replacement1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Replacement1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($Replacement1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Replacement1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>CurVal:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Replacement1_name"/>_CurVal</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Replacement1_name"/>_CurVal</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Replacement1/Doc:CurVal"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PropsdVal:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Replacement1_name"/>_PropsdVal</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Replacement1_name"/>_PropsdVal</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Replacement1/Doc:PropsdVal"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Replacement1> end ********** -->
	
	<!--  *********** point <Deletion1> start ********** -->
	<xsl:template name="Deletion1">
		<xsl:param name="Deletion1"/>
		<xsl:variable name="Deletion1_name" select="name($Deletion1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Deletion1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($Deletion1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Deletion1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>DeltdVal:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Deletion1_name"/>_DeltdVal</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Deletion1_name"/>_DeltdVal</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Deletion1/Doc:DeltdVal"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Deletion1> end ********** -->
	
	<!--  *********** point <Addition1> start ********** -->
	<xsl:template name="Addition1">
		<xsl:param name="Addition1"/>
		<xsl:variable name="Addition1_name" select="name($Addition1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Addition1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($Addition1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Addition1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>PropsdVal:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Addition1_name"/>_PropsdVal</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Addition1_name"/>_PropsdVal</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Addition1/Doc:PropsdVal"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Addition1> end ********** -->



	<!--  *********** point <DataSetSubmissionReferences2> Start ********** -->
	<xsl:template name="DataSetSubmissionReferences2">
		<xsl:param name="DataSetSubmissionReferences2"/>
		<xsl:variable name="DataSetSubmissionReferences2_name" select="name($DataSetSubmissionReferences2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DataSetSubmissionReferences2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($DataSetSubmissionReferences2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>TxId:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences2_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences2_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences2/Doc:TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>SubmitrTxRef:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences2_name"/>_SubmitrTxRef</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences2_name"/>_SubmitrTxRef</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences2/Doc:SubmitrTxRef"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DataSetSubmissionReferences1> end ********** -->
	
	<!--  *********** point <TransactionReportItems1> Start ********** -->
	<xsl:template name="TransactionReportItems1">
		<xsl:param name="TransactionReportItems1"/>
		<xsl:variable name="TransactionReportItems1_name" select="name($TransactionReportItems1)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransactionReportItems1_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($TransactionReportItems1_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>TxId:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems1/Doc:TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification3" select="$TransactionReportItems1/Doc:TSUBaselnId"/>
						<xsl:call-template name="DocumentIdentification3">
							<xsl:with-param name="DocumentIdentification3" select="$DocumentIdentification3"/>
						</xsl:call-template>
						<xsl:variable name="TransactionStatus1" select="$TransactionReportItems1/Doc:TxSts"/>
						<xsl:call-template name="TransactionStatus1">
							<xsl:with-param name="TransactionStatus1" select="$TransactionStatus1"/>
						</xsl:call-template>
						<xsl:variable name="DocumentIdentification5" select="$TransactionReportItems1/Doc:UsrTxRef"/>
						<xsl:call-template name="DocumentIdentification5">
							<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
						</xsl:call-template>
						
						<xsl:variable name="DocumentIdentification7" select="$TransactionReportItems1/Doc:PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
						</xsl:call-template>
						
						<xsl:variable name="PartyIdentification5" select="$TransactionReportItems1/Doc:Buyr"/>
						<xsl:call-template name="PartyIdentification5">
							<xsl:with-param name="PartyIdentification5" select="$PartyIdentification5"/>
						</xsl:call-template>
						
						<xsl:variable name="PartyIdentification5_double" select="$TransactionReportItems1/Doc:Sellr"/>
						<xsl:call-template name="PartyIdentification5">
							<xsl:with-param name="PartyIdentification5" select="$PartyIdentification5_double"/>
						</xsl:call-template>
						
						<xsl:variable name="BICIdentification1" select="$TransactionReportItems1/Doc:BuyrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>BuyrBkCtry:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems1_name"/>_BuyrBkCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems1_name"/>_BuyrBkCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems1/Doc:BuyrBkCtry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="BICIdentification1_double" select="$TransactionReportItems1/Doc:SellrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>SellrBkCtry:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems1_name"/>_SellrBkCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems1_name"/>_SellrBkCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems1/Doc:SellrBkCtry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>OutsdngAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems1_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems1_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems1/Doc:OutsdngAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PendingActivity1" select="$TransactionReportItems1/Doc:PdgReqForActn"/>
						<xsl:call-template name="PendingActivity1">
							<xsl:with-param name="PendingActivity1" select="$PendingActivity1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransactionReportItems1> end ********** -->
	
	<!--  *********** point <PartyIdentification5> Start ********** -->
	<xsl:template name="PartyIdentification5">
		<xsl:param name="PartyIdentification5"/>
		<xsl:variable name="PartyIdentification5_name" select="name($PartyIdentification5)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PartyIdentification5_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($PartyIdentification5_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification5_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PartyIdentification5_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PartyIdentification5_name,5)"/>_Nm_check</xsl:attribute>
									<xsl:for-each select="$PartyIdentification5">
										<xsl:if test="Doc:Nm != '' ">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>Nm:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PartyIdentification5_name,5)"/>_Nm</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PartyIdentification5_name,5)"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification5/Doc:Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PartyIdentification5_name,5)"/>_BEI_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PartyIdentification5_name,5)"/>_BEI_check</xsl:attribute>
									<xsl:for-each select="$PartyIdentification5">
										<xsl:if test="Doc:BEI != '' ">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:text>BEI:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($PartyIdentification5_name,5)"/>_BEI</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($PartyIdentification5_name,5)"/>_BEI</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification5/Doc:BEI"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PostalAddress2" select="$PartyIdentification5/Doc:PstlAdr"/>
						<xsl:call-template name="PostalAddress2">
							<xsl:with-param name="PostalAddress2" select="$PostalAddress2"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <PartyIdentification5> end ********** -->
	
	<!--  *********** point <ReportSpecification2> Start ********** -->
	<xsl:template name="ReportSpecification2">
		<xsl:param name="ReportSpecification2"/>
		<xsl:variable name="ReportSpecification2_name" select="name($ReportSpecification2)"/>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ReportSpecification2_name"/>')</xsl:attribute>
					<xsl:value-of select="substring($ReportSpecification2_name,5)"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>TxId:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification2_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportSpecification2/Doc:TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="TransactionStatus1" select="$ReportSpecification2/Doc:TxSts"/>
						<xsl:call-template name="TransactionStatus1">
							<xsl:with-param name="TransactionStatus1" select="$TransactionStatus1"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>SubmitrTxRef:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification2_name"/>_SubmitrTxRef</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_name"/>_SubmitrTxRef</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportSpecification2/Doc:SubmitrTxRef"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="BICIdentification1" select="$ReportSpecification2/Doc:NttiesToBeRptd"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1_double" select="$ReportSpecification2/Doc:Crspdt"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
						</xsl:call-template>
						
						<xsl:variable name="PartyIdentification5" select="$ReportSpecification2/Doc:Buyr"/>
						<xsl:call-template name="PartyIdentification5">
							<xsl:with-param name="PartyIdentification5" select="$PartyIdentification5"/>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification5_double" select="$ReportSpecification2/Doc:Sellr"/>
						<xsl:call-template name="PartyIdentification5">
							<xsl:with-param name="PartyIdentification5" select="$PartyIdentification5_double"/>
						</xsl:call-template>
						
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>BuyrCtry:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification2_name"/>_BuyrCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_name"/>_BuyrCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportSpecification2/Doc:BuyrCtry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>SellrCtry:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification2_name"/>_SellrCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_name"/>_SellrCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportSpecification2/Doc:SellrCtry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>CrspdtCtry:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification2_name"/>_CrspdtCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_name"/>_CrspdtCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportSpecification2/Doc:CrspdtCtry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						
						<xsl:variable name="PendingActivity1" select="$ReportSpecification2/Doc:PdgReqForActn"/>
						<xsl:call-template name="PendingActivity1">
							<xsl:with-param name="PendingActivity1" select="$PendingActivity1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ReportSpecification2> end ********** -->

	<!-- jkz -->
	<xsl:include href="commonality.xsl"/>
	<!-- jkz -->
</xsl:stylesheet>
