<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="4125e20f-c1d4-4903-ac94-3b66e8d2771a" Description="Description for Company.Language12.Language12" Name="Language12" DisplayName="Language12" Namespace="Company.Language12" ProductName="Language12" CompanyName="Company" PackageGuid="b3a9b4fc-34d3-4fc7-b521-433fc9af33bd" PackageNamespace="Company.Language12" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="4c25f34c-c4d9-4acb-b999-a6dc8d92b63e" Description="The root in which all other elements are embedded. Appears as a diagram." Name="World" DisplayName="World" Namespace="Company.Language12">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="Country" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>WorldHasContries.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="01c501ac-f593-4c6d-83e9-28da8bcefa99" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="Country" DisplayName="Country" Namespace="Company.Language12">
      <Properties>
        <DomainProperty Id="a2680c15-1b2a-4f52-92bb-c5e00ee67253" Description="Description for Company.Language12.Country.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c4b8264e-f248-42ae-b943-1643083fc1f8" Description="Description for Company.Language12.Country.Flag" Name="Flag" DisplayName="Flag">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="City" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>CountryHasCities.Cities</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="29e5c664-f080-491a-907d-7685136526c7" Description="Description for Company.Language12.City" Name="City" DisplayName="City" Namespace="Company.Language12">
      <Properties>
        <DomainProperty Id="89ea6c23-8943-4ab4-ac23-56f64244648c" Description="Description for Company.Language12.City.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="ae813b01-1698-467e-ae13-1f978ff301f2" Description="Description for Company.Language12.City.Population" Name="Population" DisplayName="Population">
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9826b802-3135-4e85-9fe1-012cd1136357" Description="Description for Company.Language12.City.Location" Name="Location" DisplayName="Location">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Person" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>CityHasPersons.Persons</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="0e87d30c-bfbd-4e1c-8e91-3ec36e598106" Description="Description for Company.Language12.Person" Name="Person" DisplayName="Person" Namespace="Company.Language12">
      <Properties>
        <DomainProperty Id="e214c4f0-52a4-49d3-8252-e6587a54f7fe" Description="Description for Company.Language12.Person.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="1d461642-540b-4e3e-90ff-4343b6807b5b" Description="Description for Company.Language12.Person.Gender" Name="Gender" DisplayName="Gender">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="89a8c048-7646-4f73-9b2e-d27c65a6ce45" Description="Description for Company.Language12.Person.Age" Name="Age" DisplayName="Age">
          <Type>
            <ExternalTypeMoniker Name="/System/UInt16" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="43f54d39-6096-4e31-9979-7a51660e64b6" Description="Embedding relationship between the Model and Elements" Name="WorldHasContries" DisplayName="World Has Contries" Namespace="Company.Language12" IsEmbedding="true">
      <Source>
        <DomainRole Id="10ece4d3-f90d-4169-9d93-b8447543fad6" Description="" Name="World" DisplayName="World" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="World" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="bb9be549-f004-4b28-99d1-9e490203a86c" Description="" Name="Element" DisplayName="Element" PropertyName="World" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="World">
          <RolePlayer>
            <DomainClassMoniker Name="Country" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="162e6069-5ca9-4623-9c02-e43afb0af786" Description="Reference relationship between Elements." Name="CountryReferencesTargets" DisplayName="Country References Targets" Namespace="Company.Language12">
      <Source>
        <DomainRole Id="cc49ec82-3d87-4a48-bfac-a18efacf7609" Description="Description for Company.Language12.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <RolePlayer>
            <DomainClassMoniker Name="Country" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="e90fedbc-9d61-4186-8f24-731d4357a59a" Description="Description for Company.Language12.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
          <RolePlayer>
            <DomainClassMoniker Name="Country" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="cb61ccc7-137e-45b4-abe8-aa57e625bc9f" Description="Description for Company.Language12.CountryHasCities" Name="CountryHasCities" DisplayName="Country Has Cities" Namespace="Company.Language12" IsEmbedding="true">
      <Source>
        <DomainRole Id="b2fd9975-9636-4a5c-b237-e1fbd4ab1215" Description="Description for Company.Language12.CountryHasCities.Country" Name="Country" DisplayName="Country" PropertyName="Cities" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Cities">
          <RolePlayer>
            <DomainClassMoniker Name="Country" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="6531dafc-338f-4180-a85b-cbf3d1c8ad82" Description="Description for Company.Language12.CountryHasCities.City" Name="City" DisplayName="City" PropertyName="Country" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Country">
          <RolePlayer>
            <DomainClassMoniker Name="City" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="b82cdec8-021f-4389-a328-7a4e0d2fb4ef" Description="Description for Company.Language12.CityHasPersons" Name="CityHasPersons" DisplayName="City Has Persons" Namespace="Company.Language12" IsEmbedding="true">
      <Source>
        <DomainRole Id="716ff688-c7d9-47e9-b7f7-376806519f24" Description="Description for Company.Language12.CityHasPersons.City" Name="City" DisplayName="City" PropertyName="Persons" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Persons">
          <RolePlayer>
            <DomainClassMoniker Name="City" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="ba4f3f36-c512-49e8-94b4-f52bbfcbe432" Description="Description for Company.Language12.CityHasPersons.Person" Name="Person" DisplayName="Person" PropertyName="City" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="City">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="1c6f417d-30e2-42d9-ae6f-479187b3dd7e" Description="Description for Company.Language12.CityReferencesTargetCities" Name="CityReferencesTargetCities" DisplayName="City References Target Cities" Namespace="Company.Language12">
      <Source>
        <DomainRole Id="6cfdd5f0-d3f1-48ee-861a-65de8419038a" Description="Description for Company.Language12.CityReferencesTargetCities.SourceCity" Name="SourceCity" DisplayName="Source City" PropertyName="TargetCities" PropertyDisplayName="Target Cities">
          <RolePlayer>
            <DomainClassMoniker Name="City" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="06a565fe-83d9-4fae-92c5-4893444d693c" Description="Description for Company.Language12.CityReferencesTargetCities.TargetCity" Name="TargetCity" DisplayName="Target City" PropertyName="SourceCities" PropertyDisplayName="Source Cities">
          <RolePlayer>
            <DomainClassMoniker Name="City" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <GeometryShape Id="7c128fff-e100-46be-84e2-b984aef4e27d" Description="Shape used to represent ExampleElements on a Diagram." Name="CountryShape" DisplayName="Country Shape" Namespace="Company.Language12" FixedTooltipText="Country Shape" TextColor="Navy" FillColor="255, 128, 0" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Ellipse">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="CountryName" DisplayName="Country Name" DefaultText="CountryName" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="9fd99a3a-a2b7-4ba5-95a7-e76d1f52bb50" Description="Description for Company.Language12.CityShape" Name="CityShape" DisplayName="City Shape" Namespace="Company.Language12" GeneratesDoubleDerived="true" FixedTooltipText="City Shape" FillColor="SpringGreen" InitialHeight="1" Geometry="Circle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Loc" DisplayName="Loc" DefaultText="Loc" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomRight" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Population" DisplayName="Population" DefaultText="Population" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="6da39af7-1a5d-437c-a190-e51f53b68ee8" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="Company.Language12" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
    <Connector Id="256d0471-dd8c-4c47-bb78-43707d1f372b" Description="Description for Company.Language12.CityConnector" Name="CityConnector" DisplayName="City Connector" Namespace="Company.Language12" FixedTooltipText="City Connector">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="CityConnection" DisplayName="City Connection" DefaultText="CityConnection" />
      </ConnectorHasDecorators>
    </Connector>
  </Connectors>
  <XmlSerializationBehavior Name="Language12SerializationBehavior" Namespace="Company.Language12">
    <ClassData>
      <XmlClassData TypeName="World" MonikerAttributeName="" SerializeId="true" MonikerElementName="worldMoniker" ElementName="world" MonikerTypeName="WorldMoniker">
        <DomainClassMoniker Name="World" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="WorldHasContries" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Country" MonikerAttributeName="name" SerializeId="true" MonikerElementName="countryMoniker" ElementName="country" MonikerTypeName="CountryMoniker">
        <DomainClassMoniker Name="Country" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Country/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="targets">
            <DomainRelationshipMoniker Name="CountryReferencesTargets" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="flag">
            <DomainPropertyMoniker Name="Country/Flag" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="cities">
            <DomainRelationshipMoniker Name="CountryHasCities" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="WorldHasContries" MonikerAttributeName="" SerializeId="true" MonikerElementName="worldHasContriesMoniker" ElementName="worldHasContries" MonikerTypeName="WorldHasContriesMoniker">
        <DomainRelationshipMoniker Name="WorldHasContries" />
      </XmlClassData>
      <XmlClassData TypeName="CountryReferencesTargets" MonikerAttributeName="" SerializeId="true" MonikerElementName="countryReferencesTargetsMoniker" ElementName="countryReferencesTargets" MonikerTypeName="CountryReferencesTargetsMoniker">
        <DomainRelationshipMoniker Name="CountryReferencesTargets" />
      </XmlClassData>
      <XmlClassData TypeName="CountryShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="countryShapeMoniker" ElementName="countryShape" MonikerTypeName="CountryShapeMoniker">
        <GeometryShapeMoniker Name="CountryShape" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleConnectorMoniker" ElementName="exampleConnector" MonikerTypeName="ExampleConnectorMoniker">
        <ConnectorMoniker Name="ExampleConnector" />
      </XmlClassData>
      <XmlClassData TypeName="Language12Diagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="language12DiagramMoniker" ElementName="language12Diagram" MonikerTypeName="Language12DiagramMoniker">
        <DiagramMoniker Name="Language12Diagram" />
      </XmlClassData>
      <XmlClassData TypeName="City" MonikerAttributeName="" SerializeId="true" MonikerElementName="cityMoniker" ElementName="city" MonikerTypeName="CityMoniker">
        <DomainClassMoniker Name="City" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="City/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="population">
            <DomainPropertyMoniker Name="City/Population" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="persons">
            <DomainRelationshipMoniker Name="CityHasPersons" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="location">
            <DomainPropertyMoniker Name="City/Location" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetCities">
            <DomainRelationshipMoniker Name="CityReferencesTargetCities" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="CountryHasCities" MonikerAttributeName="" SerializeId="true" MonikerElementName="countryHasCitiesMoniker" ElementName="countryHasCities" MonikerTypeName="CountryHasCitiesMoniker">
        <DomainRelationshipMoniker Name="CountryHasCities" />
      </XmlClassData>
      <XmlClassData TypeName="Person" MonikerAttributeName="" SerializeId="true" MonikerElementName="personMoniker" ElementName="person" MonikerTypeName="PersonMoniker">
        <DomainClassMoniker Name="Person" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Person/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="gender">
            <DomainPropertyMoniker Name="Person/Gender" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="age">
            <DomainPropertyMoniker Name="Person/Age" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="CityHasPersons" MonikerAttributeName="" SerializeId="true" MonikerElementName="cityHasPersonsMoniker" ElementName="cityHasPersons" MonikerTypeName="CityHasPersonsMoniker">
        <DomainRelationshipMoniker Name="CityHasPersons" />
      </XmlClassData>
      <XmlClassData TypeName="CityShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="cityShapeMoniker" ElementName="cityShape" MonikerTypeName="CityShapeMoniker">
        <GeometryShapeMoniker Name="CityShape" />
      </XmlClassData>
      <XmlClassData TypeName="CityReferencesTargetCities" MonikerAttributeName="" SerializeId="true" MonikerElementName="cityReferencesTargetCitiesMoniker" ElementName="cityReferencesTargetCities" MonikerTypeName="CityReferencesTargetCitiesMoniker">
        <DomainRelationshipMoniker Name="CityReferencesTargetCities" />
      </XmlClassData>
      <XmlClassData TypeName="CityConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="cityConnectorMoniker" ElementName="cityConnector" MonikerTypeName="CityConnectorMoniker">
        <ConnectorMoniker Name="CityConnector" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="Language12Explorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="CountryReferencesTargetsBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="CountryReferencesTargets" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Country" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Country" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="CityReferencesTargetCitiesBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="CityReferencesTargetCities" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="City" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="City" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="b8924b17-6ed4-4644-b9ae-1a1dac1c2a72" Description="Description for Company.Language12.Language12Diagram" Name="Language12Diagram" DisplayName="Minimal Language Diagram" Namespace="Company.Language12">
    <Class>
      <DomainClassMoniker Name="World" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Country" />
        <ParentElementPath>
          <DomainPath>WorldHasContries.World/!World</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CountryShape/CountryName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Country/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CountryShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="City" />
        <ParentElementPath>
          <DomainPath>CountryHasCities.Country/!Country/WorldHasContries.World/!World</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CityShape/Loc" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="City/Location" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CityShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="City/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CityShape/Population" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="City/Population" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CityShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ExampleConnector" />
        <DomainRelationshipMoniker Name="CountryReferencesTargets" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="CityConnector" />
        <DomainRelationshipMoniker Name="CityReferencesTargetCities" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="Language12" EditorGuid="03846049-b1f9-43df-bd6e-a03c26f928d4">
    <RootClass>
      <DomainClassMoniker Name="World" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="Language12SerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Language12">
      <ElementTool Name="CountryShape" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="CountryShape" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="Country" />
      </ElementTool>
      <ConnectionTool Name="ContryRelationship" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="ContryRelationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="Language12/CountryReferencesTargetsBuilder" />
      </ConnectionTool>
      <ElementTool Name="CityShape" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="City" Tooltip="City Shape" HelpKeyword="CityShape">
        <DomainClassMoniker Name="City" />
      </ElementTool>
      <ConnectionTool Name="CityRElationship" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="CityRElationship" Tooltip="City RElationship" HelpKeyword="CityRElationship">
        <ConnectionBuilderMoniker Name="Language12/CityReferencesTargetCitiesBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="Language12Diagram" />
  </Designer>
  <Explorer ExplorerGuid="88032ecc-bc09-4194-945c-d263d793e93b" Title="Language12 Explorer">
    <ExplorerBehaviorMoniker Name="Language12/Language12Explorer" />
  </Explorer>
</Dsl>