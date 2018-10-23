class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :update, :destroy]

  # GET /addresses
  def index
    @addresses = Address.all

    render json: @addresses
  end

  # GET /addresses/1
  def show
    render json: @address
  end

  # POST /addresses
  def create
    @address = Address.new(address_params)

    if @address.save
      render json: @address, status: :created, location: @address
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /addresses/1
  def update
    if @address.update(address_params)
      render json: @address
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

  # DELETE /addresses/1
  def destroy
    @address.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def address_params
      params.require(:address).permit(:alleyCrossStreetsFlag, :assemblyDistrict, :bbl, :bblBoroughCode, :bblTaxBlock, :bblTaxLot, :boardOfElectionsPreferredLgc, :boePreferredStreetName, :boePreferredstreetCode, :buildingIdentificationNumber, :censusBlock2000, :censusBlock2010, :censusTract1990, :censusTract2000, :censusTract2010, :cityCouncilDistrict, :civilCourtDistrict, :coincidentSegmentCount, :communityDistrict, :communityDistrictBoroughCode, :communityDistrictNumber, :communitySchoolDistrict, :condominiumBillingBbl, :condominiumFlag, :congressionalDistrict, :cooperativeIdNumber, :crossStreetNamesFlagIn, :dcpPreferredLgc, :dofCondominiumIdentificationNumber, :dotStreetLightContractorArea, :dynamicBlock, :electionDistrict, :fireBattalion, :fireCompanyNumber, :fireCompanyType, :fireDivision, :firstBoroughName, :firstStreetCode, :firstStreetNameNormalized, :fromLionNodeId, :fromPreferredLgcsFirstSetOf5, :genericId, :geosupportFunctionCode, :geosupportReturnCode, :geosupportReturnCode2, :gi5DigitStreetCode1, :giBoroughCode1, :giBuildingIdentificationNumber1, :giDcpPreferredLgc1, :giHighHouseNumber1, :giLowHouseNumber1, :giSideOfStreetIndicator1, :giStreetCode1, :giStreetName1, :healthArea, :healthCenterDistrict, :highBblOfThisBuildingsCondominiumUnits, :highCrossStreetB5SC1, :highCrossStreetCode1, :highCrossStreetName1, :highHouseNumberOfBlockfaceSortFormat, :houseNumber, :houseNumberIn, :houseNumberSortFormat, :hurricaneEvacuationZone, :individualSegmentLength, :instructionalRegion, :interimAssistanceEligibilityIndicator, :internalLabelXCoordinate, :internalLabelYCoordinate, :latitude, :latitudeInternalLabel, :legacySegmentId, :lionBoroughCode, :lionBoroughCodeForVanityAddress, :lionFaceCode, :lionFaceCodeForVanityAddress, :lionKey, :lionKeyForVanityAddress, :lionSequenceNumber, :lionSequenceNumberForVanityAddress, :listOf4Lgcs, :longitude, :longitudeInternalLabel, :lowBblOfThisBuildingsCondominiumUnits, :lowCrossStreetB5SC1, :lowCrossStreetCode1, :lowCrossStreetName1, :lowHouseNumberOfBlockfaceSortFormat, :lowHouseNumberOfDefiningAddressRange, :noCrossStreetCalculationFlag, :nta, :ntaName, :numberOfCrossStreetB5SCsHighAddressEnd, :numberOfCrossStreetB5SCsLowAddressEnd, :numberOfCrossStreetsHighAddressEnd, :numberOfCrossStreetsLowAddressEnd, :numberOfEntriesInListOfGeographicIdentifiers, :numberOfExistingStructuresOnLot, :numberOfStreetFrontagesOfLot, :physicalId, :policePatrolBoroughCommand, :policePrecinct, :returnCode1a, :returnCode1e, :roadwayType, :rpadBuildingClassificationCode, :rpadSelfCheckCodeForBbl, :sanbornBoroughCode, :sanbornPageNumber, :sanbornVolumeNumber, :sanbornVolumeNumberSuffix, :sanitationCollectionSchedulingSectionAndSubsection, :sanitationDistrict, :sanitationRecyclingCollectionSchedule, :sanitationRegularCollectionSchedule, :sanitationSnowPriorityCode, :segmentAzimuth, :segmentIdentifier, :segmentLengthInFeet, :segmentOrientation, :segmentTypeCode, :selfCheckCodeOfBillingBbl, :sideOfStreetIndicator, :sideOfStreetOfVanityAddress, :splitLowHouseNumber, :stateSenatorialDistrict, :streetName1In, :streetStatus, :streetWidth, :taxMapNumberSectionAndVolume, :toLionNodeId, :toPreferredLgcsFirstSetOf5, :trafficDirection, :underlyingStreetCode, :uspsPreferredCityName, :workAreaFormatIndicatorIn, :xCoordinate, :xCoordinateHighAddressEnd, :xCoordinateLowAddressEnd, :xCoordinateOfCenterofCurvature, :yCoordinate, :yCoordinateHighAddressEnd, :yCoordinateLowAddressEnd, :yCoordinateOfCenterofCurvature, :zipCode, :zipCodeIn)
    end
end
