import { defineCollection } from "astro:content";
import { z } from "astro/zod";
import { glob } from "astro/loaders";

export const collections = {
    projects: defineCollection({
        loader: glob({ base: "./src/content/projects", pattern: "**/*.md" }),
        schema: z.object({
            title: z.string(),
            description: z.string(),
            image: z.string().optional(),
            site: z.string().optional(),
            repo: z.string(),
            status: z.string(),
            pinned: z.boolean().optional(),
        }),
    }),
};
