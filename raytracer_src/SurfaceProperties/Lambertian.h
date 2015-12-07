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

#ifndef LAMBERTIAN_H_
#define LAMBERTIAN_H_

#include "SurfaceProperty.h"
#include "Surface.h"
#include <cmath>
#include "json.h"

class Lambertian: public SurfaceProperty {
  public:
    Lambertian();
    Lambertian(Json::Value jsonData);

    /**
     * Random direction for ray is generated.
     */
    AbstractGeometry* receiveRay(Ray &ray, Surface* surface,
                                 AbstractGeometry* from,
                                 AbstractGeometry* to);


};

#endif /* LAMBERTIAN_H_ */
