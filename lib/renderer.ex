defmodule Renderer do
  def render do
    aspect_ratio = 16.0 / 9.0
    image_width = 400
    image_height = round(image_width / aspect_ratio)

    focal_length = 1.0
    viewport_height = 2.0
    viewport_width = viewport_height * image_width / image_height
    camera_origin = {0, 0, 0}

    viewport_u = {viewport_width, 0, 0}
    viewport_v = {0, -viewport_height, 0}

    pixel_delta_u = Vec3.divide(viewport_u, image_width)
    pixel_delta_v = Vec3.divide(viewport_v, image_height)

    viewport_top_left =
      Vec3.subtract(camera_origin, {0, 0, focal_length})
      |> Vec3.subtract(Vec3.divide(viewport_u, 2))
      |> Vec3.subtract(Vec3.divide(viewport_v, 2))

    pixel_00_location =
      Vec3.add(
        viewport_top_left,
        Vec3.add(pixel_delta_u, pixel_delta_v)
        |> Vec3.multiply(0.5)
      )

    {:ok, io} = File.open(~c"test.ppm", [:write])
    IO.binwrite(io, "P3\n#{image_width} #{image_height}\n255\n")

    for j <- 0..(image_height - 1) do
      for i <- 0..(image_width - 1) do
        pixel_center =
          Vec3.add(
            pixel_00_location,
            Vec3.multiply(
              pixel_delta_u,
              i
            )
          )
          |> Vec3.add(
            Vec3.multiply(
              pixel_delta_v,
              j
            )
          )

        ray_direction = Vec3.subtract(pixel_center, camera_origin)

        colour = Ray.colour(ray_direction)

        IO.binwrite(io, Colour.to_ppm(colour))
      end
    end
  end
end
