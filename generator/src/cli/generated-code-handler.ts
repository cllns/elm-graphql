import * as glob from "glob";
import * as fs from "fs-extra";
import { prependBasePath } from "./path-helpers";
import { introspectionFromSchema, buildSchema } from "graphql";

export function removeGenerated(path: string): void {
  glob.sync(path + "/**/*.elm").forEach(fs.unlinkSync);
}

export function isGenerated(path: string): boolean {
  return (
    fs
      .readFileSync(path)
      .indexOf("Do not manually edit this file, it was auto-generated by") >= 0
  );
}

export function warnAndExitIfContainsNonGenerated({
  baseModule,
  outputPath
}: {
  baseModule: string[];
  outputPath: string;
}): void {
  const files: string[] = glob.sync(
    prependBasePath("/", baseModule, outputPath) + "/**/*.elm"
  );
  const nonGenerated = files.filter(file => !isGenerated(file));

  if (nonGenerated.length > 0) {
    console.log(
      "@dillonkearns/elm-graphql found some files that it did not generate. Please move or delete the following files and run @dillonkearns/elm-graphql again.",
      nonGenerated
    );
    process.exit(1);
  }
}

export function generateOrExitIntrospectionFileFromSchema(
  schemaFilePath: string
) : {} | undefined {
  if (fs.existsSync(schemaFilePath)) {
    const schemaData = fs.readFileSync(schemaFilePath, "utf-8");

    return JSON.parse(JSON.stringify(
      introspectionFromSchema(buildSchema(schemaData.toString()))
    ));
  } else {
    console.log("Schema file not found");
    process.exit(1);
  }
}