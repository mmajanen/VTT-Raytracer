/*
 * Copyright 2015 VTT Technical Research Center of Finland
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "SurfaceProperty.h"

SurfaceProperty::SurfaceProperty() {
  _hierarchy = -1;
  _cooperation_level = -1;
}

SurfaceProperty::~SurfaceProperty() {
  // TODO Auto-generated destructor stub
}

AbstractGeometry* SurfaceProperty::receiveRay(Ray& ray, Surface* surface,
                                              AbstractGeometry* from,
                                              AbstractGeometry* to) {
  cout << "Blank Surf" << endl;
  return (to);
}

int SurfaceProperty::hierarchy() const {
  return _hierarchy;
}
int SurfaceProperty::cooperationLevel() const {
  return (_cooperation_level);
}

void SurfaceProperty::tracerDidEndTracing() {
}
