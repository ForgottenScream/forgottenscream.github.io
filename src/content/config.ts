import { defineCollection, z } from "astro:content";

export const collections = {
  projects: defineCollection({
    schema: z.object({
      title: z.string(),
      description: z.string(),
      image: z.string().optional(),
      site: z.string().optional(),
      repo: z.string(),
      status: z.string(),
    }),
  }),
};
