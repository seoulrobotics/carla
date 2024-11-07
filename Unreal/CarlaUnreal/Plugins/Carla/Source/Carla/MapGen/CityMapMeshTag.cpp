// Copyright (c) 2024 Computer Vision Center (CVC) at the Universitat Autonoma
// de Barcelona (UAB).
//
// This work is licensed under the terms of the MIT license.
// For a copy, see <https://opensource.org/licenses/MIT>.

#include "CityMapMeshTag.h"
#include "Carla.h"

#include "UObject/Package.h"

#include <array>

ECityMapMeshTag CityMapMeshTag::GetBaseMeshTag()
{
  return ECityMapMeshTag::RoadTwoLanes_LaneLeft;
}

uint32 CityMapMeshTag::GetRoadIntersectionSize()
{
  return 5u;
}

FString CityMapMeshTag::ToString(ECityMapMeshTag Tag)
{
  static_assert(TIsEnumClass<ECityMapMeshTag>::Value);
  return StaticEnum<ECityMapMeshTag>()->GetNameStringByValue((int64)Tag);
}
